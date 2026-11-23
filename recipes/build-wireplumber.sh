#!/bin/sh
# wireplumber 0.5.15-1: meson build (system-lua like the previous
# package; introspection auto keeps the gir), then wireplumber's own
# service files for every non-systemd init — distro model, same
# pipewire user + runtime dir as the pipewire package's services.
set -e

meson setup build \
  --prefix=/usr --libdir=/usr/lib --buildtype=release --wrap-mode=nodownload \
  -Dsystem-lua=true
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install

# ---------- upstream systemd SYSTEM unit ----------
# System (not user) unit for consistency with the other four inits:
# upstream's system template already carries User=pipewire, the
# -p main-systemwide policy flag and the %t runtime paths. meson skips
# it here (systemd.pc ships with the full systemd package, not
# systemd-libs), so generate from the template with meson's substitution.
mkdir -p "$DESTDIR/usr/lib/systemd/system"
sed -e 's|@WP_BINARY@|/usr/bin/wireplumber|' \
  src/systemd/system/wireplumber.service.in \
  > "$DESTDIR/usr/lib/systemd/system/wireplumber.service"
sed -e 's|@WP_BINARY@|/usr/bin/wireplumber|' \
  src/systemd/system/wireplumber@.service.in \
  > "$DESTDIR/usr/lib/systemd/system/wireplumber@.service"

# ---------- gir + typelib carry-forward ----------
# meson's gir gate needs doxygen + python-lxml (neither on this host or
# in the index); the previous 0.5.15 payload shipped both and this is
# the same version, so carry them forward byte-for-byte from it (sha
# verified against the old manifest) instead of porting two doc tools.
OLD_URL="https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wireplumber/wireplumber-0.5.15.tar.gz"
OLD_SHA="17d15d172ef6bb85175fff8a26a6e2eb2c13627dcff38f09a5c0938454803fb2"
tmp=$(mktemp)
curl -sfL "$OLD_URL" -o "$tmp"
echo "$OLD_SHA  $tmp" | sha256sum -c - >/dev/null
mkdir -p "$DESTDIR/usr/share/gir-1.0" "$DESTDIR/usr/lib/girepository-1.0"
tar -xOzf "$tmp" --wildcards "*/usr/share/gir-1.0/Wp-0.5.gir" \
  > "$DESTDIR/usr/share/gir-1.0/Wp-0.5.gir"
tar -xOzf "$tmp" --wildcards "*/usr/lib/girepository-1.0/Wp-0.5.typelib" \
  > "$DESTDIR/usr/lib/girepository-1.0/Wp-0.5.typelib"
rm -f "$tmp"

# ---------- openrc (house iwd style) ----------
mkdir -p "$DESTDIR/etc/init.d"
cat > "$DESTDIR/etc/init.d/wireplumber" <<'EOF'
#!/sbin/openrc-run
# WirePlumber — PipeWire session manager. Talks to pipewire over its
# native socket, so no private bus is needed; runs as the pipewire user.

description="WirePlumber session manager"
supervisor=supervise-daemon
command=/usr/bin/wireplumber
command_user=pipewire
export PIPEWIRE_RUNTIME_DIR="/run/pipewire"

depend() {
	need pipewire
	need dbus
}
EOF
chmod +x "$DESTDIR/etc/init.d/wireplumber"

# ---------- runit (Void-style run script) ----------
mkdir -p "$DESTDIR/etc/service/wireplumber"
cat > "$DESTDIR/etc/service/wireplumber/run" <<'EOF'
#!/bin/sh
exec 2>&1
# WirePlumber — session manager over pipewire's native socket; no
# private bus needed, same runtime dir as pipewire.
! [ -d /run/pipewire ] && install -m 755 -g pipewire -o pipewire -d /run/pipewire
export PIPEWIRE_RUNTIME_DIR=/run/pipewire
exec chpst -P -u pipewire:audio:video /usr/bin/wireplumber
EOF
printf '#!/bin/sh\nexec sv "$1" wireplumber\n' > "$DESTDIR/etc/service/wireplumber/control"
chmod +x "$DESTDIR/etc/service/wireplumber/run" "$DESTDIR/etc/service/wireplumber/control"

# ---------- dinit (house iwd style) ----------
mkdir -p "$DESTDIR/etc/dinit.d" "$DESTDIR/etc/dinit.d/boot.d"
cat > "$DESTDIR/etc/dinit.d/wireplumber" <<'EOF'
# WirePlumber — session manager over pipewire's native socket (no bus).
type = process
command = /bin/sh -c "install -m 755 -g pipewire -o pipewire -d /run/pipewire 2>/dev/null || true; exec setpriv --reuid=pipewire --regid=pipewire --init-groups env PIPEWIRE_RUNTIME_DIR=/run/pipewire /usr/bin/wireplumber"
smooth-recovery = yes
log-type = buffer
depends-on: pipewire
EOF
# enable at boot — the dinit-services boot.d symlink convention
ln -s ../wireplumber "$DESTDIR/etc/dinit.d/boot.d/wireplumber"

# ---------- shepherd (house iwd.scm pattern) ----------
mkdir -p "$DESTDIR/etc/shepherd.d"
cat > "$DESTDIR/etc/shepherd.d/wireplumber.scm" <<'EOF'
;; WirePlumber — session manager over pipewire's native socket (no bus).
(haliade-service!
 'wireplumber
 (service
  '(wireplumber)
  #:requirement '(pipewire)
  #:start (make-forkexec-constructor
           '("/bin/sh" "-c"
             "exec setpriv --reuid=pipewire --regid=pipewire --init-groups env PIPEWIRE_RUNTIME_DIR=/run/pipewire /usr/bin/wireplumber"))
  #:stop (make-kill-destructor)
  #:respawn? #t))
EOF
