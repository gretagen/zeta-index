#!/bin/sh
# pipewire 1.6.8-4: meson build reproducing the previous package's
# feature set (jack/ffmpeg/x11/pipewire-alsa off — absent from that
# payload; docs/man/tests off), then the in-package service files for
# every init — the distro model: apps carry their own services, the
# [init]-services packages stay the bare swap-minimum.
#
# DESTDIR is exported by zeta-makepkg; meson's default
# systemd-user-service install puts upstream's user units in the stage
# and clean_stage=false keeps them (along with dbus/udev/tmpfiles).
set -e

meson setup build \
  --prefix=/usr --libdir=/usr/lib --buildtype=release --wrap-mode=nodownload \
  -Djack=disabled -Dx11=disabled -Dpipewire-alsa=disabled -Dtests=disabled \
  -Dsession-managers= \
  -Davahi=disabled -Dgstreamer=disabled -Dgstreamer-device-provider=disabled \
  -Dlibpulse=disabled -Dlibusb=disabled
# ffmpeg/docs/man already default to disabled; jack/x11/pipewire-alsa are
# feature-typed (auto would enable them on this host — the previous build
# had them off, absent from its payload); avahi/gstreamer/libpulse/libusb
# likewise auto-detected here and linked, which the previous build's dep
# list proves it never had. session-managers: pipewire builds wireplumber
# as a SUBPROJECT (not a system dependency) purely for pw-uninstalled.sh's
# default manager — a dev tool; real systems start wireplumber as its own
# service, so the list is emptied instead of letting the wrap download.
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install

# ---------- upstream systemd SYSTEM units ----------
# System (not user) units, for consistency with the other four inits:
# system-level services running as the pipewire user — upstream's own
# templates already carry User=pipewire, RuntimeDirectory=pipewire,
# socket ownership (SocketUser/Group=pipewire) and the %t runtime paths,
# so they match the openrc/dinit/runit/shepherd files exactly. meson
# skips them here (systemd.pc ships with the full systemd package, not
# systemd-libs), so generate from the templates with meson's substitutions.
mkdir -p "$DESTDIR/usr/lib/systemd/system"
U=src/daemon/systemd/system
sed -e 's|@PW_BINARY@|/usr/bin/pipewire|' \
    "$U/pipewire.service.in" > "$DESTDIR/usr/lib/systemd/system/pipewire.service"
sed -e 's|@PW_PULSE_BINARY@|/usr/bin/pipewire-pulse|' \
    "$U/pipewire-pulse.service.in" > "$DESTDIR/usr/lib/systemd/system/pipewire-pulse.service"
cp "$U/pipewire.socket" "$U/pipewire-pulse.socket" "$U/pipewire-manager.socket" \
   "$DESTDIR/usr/lib/systemd/system/"

# ---------- openrc (Gentoo semantics, house iwd style) ----------
mkdir -p "$DESTDIR/etc/init.d"
cat > "$DESTDIR/etc/init.d/pipewire" <<'EOF'
#!/sbin/openrc-run
# PipeWire Multimedia Service — dedicated pipewire user, run directly:
# upstream's system units do the same (RTKit falls back to the system
# bus harmlessly — no session bus is needed), and supervise-daemon now
# tracks pipewire itself instead of a wrapper whose death orphaned the
# daemon and left it holding the socket. umask 000: pipewire's native
# socket must be writable by session clients; systemd does the same
# job with SocketMode=0660.

description="PipeWire Multimedia Service"
supervisor=supervise-daemon
command=/usr/bin/pipewire
command_user=pipewire
export PIPEWIRE_RUNTIME_DIR="/run/pipewire"

depend() {
	need dbus
	after bootmisc
}

start_pre() {
	umask 000
	if [ ! -d /run/pipewire ]; then
		install -m 755 -o pipewire -g pipewire -d /run/pipewire
	fi
}
EOF
cat > "$DESTDIR/etc/init.d/pipewire-pulse" <<'EOF'
#!/sbin/openrc-run
# pipewire-pulse — standalone daemon (the binary upstream's unit and
# the running host use), same user as pipewire, run directly for the
# same orphan-tracking reason as the pipewire unit above.

description="PipeWire PulseAudio-compatible server"
supervisor=supervise-daemon
command=/usr/bin/pipewire-pulse
command_user=pipewire
export PIPEWIRE_RUNTIME_DIR="/run/pipewire"
# pulse protocol resolves unix:native from PULSE_RUNTIME_PATH (or
# XDG_RUNTIME_DIR) — PIPEWIRE_RUNTIME_DIR alone makes it exit at spawn
export PULSE_RUNTIME_PATH=/run/pipewire/pulse
export XDG_STATE_HOME="/var/lib"

depend() {
	need pipewire
	need dbus
}

start_pre() {
	umask 000
	if [ ! -d /run/pipewire/pulse ]; then
		install -m 755 -o pipewire -g pipewire -d /run/pipewire/pulse
	fi
}
EOF
chmod +x "$DESTDIR/etc/init.d/pipewire" "$DESTDIR/etc/init.d/pipewire-pulse"

# ---------- runit (Void's run scripts, adapted to the pipewire user) ----------
mkdir -p "$DESTDIR/etc/service/pipewire" "$DESTDIR/etc/service/pipewire-pulse"
cat > "$DESTDIR/etc/service/pipewire/run" <<'EOF'
#!/bin/sh
exec 2>&1
# PipeWire — Void's dedicated-user model, run directly (upstream
# system-mode: no session bus needed); umask 000 so session clients
# can connect to the native socket, runtime dir under /run/pipewire.
! [ -d /run/pipewire ] && install -m 755 -g pipewire -o pipewire -d /run/pipewire
umask 000
export PIPEWIRE_RUNTIME_DIR=/run/pipewire
export XDG_STATE_HOME=/var/lib
exec chpst -P -u pipewire:audio:video /usr/bin/pipewire
EOF
cat > "$DESTDIR/etc/service/pipewire-pulse/run" <<'EOF'
#!/bin/sh
exec 2>&1
# pipewire-pulse — standalone daemon beside pipewire, own session bus.
# PULSE_RUNTIME_PATH: the pulse protocol resolves unix:native from it
# (or XDG_RUNTIME_DIR) — PIPEWIRE_RUNTIME_DIR alone makes it exit.
! [ -d /run/pipewire ] && install -m 755 -g pipewire -o pipewire -d /run/pipewire
! [ -d /run/pipewire/pulse ] && install -m 755 -g pipewire -o pipewire -d /run/pipewire/pulse
umask 000
export PIPEWIRE_RUNTIME_DIR=/run/pipewire
export PULSE_RUNTIME_PATH=/run/pipewire/pulse
export XDG_STATE_HOME=/var/lib
exec chpst -P -u pipewire:audio:video /usr/bin/pipewire-pulse
EOF
printf '#!/bin/sh\nexec sv "$1" pipewire\n'       > "$DESTDIR/etc/service/pipewire/control"
printf '#!/bin/sh\nexec sv "$1" pipewire-pulse\n' > "$DESTDIR/etc/service/pipewire-pulse/control"
chmod +x "$DESTDIR/etc/service/pipewire/run" "$DESTDIR/etc/service/pipewire/control" \
         "$DESTDIR/etc/service/pipewire-pulse/run" "$DESTDIR/etc/service/pipewire-pulse/control"

# ---------- dinit (house iwd style: double-quoted sh -c, setpriv drop) ----------
mkdir -p "$DESTDIR/etc/dinit.d" "$DESTDIR/etc/dinit.d/boot.d"
cat > "$DESTDIR/etc/dinit.d/pipewire" <<'EOF'
# PipeWire — private session bus + pipewire user (same shape as the iwd
# definition; sh -c MUST be double-quoted: dinit only groups whitespace
# inside double quotes).
type = process
command = /bin/sh -c "umask 000; install -m 755 -g pipewire -o pipewire -d /run/pipewire 2>/dev/null || true; exec setpriv --reuid=$(id -u pipewire) --regid=$(id -g pipewire) --init-groups env PIPEWIRE_RUNTIME_DIR=/run/pipewire XDG_STATE_HOME=/var/lib /usr/bin/pipewire"
smooth-recovery = yes
log-type = buffer
depends-on: dbus
EOF
cat > "$DESTDIR/etc/dinit.d/pipewire-pulse" <<'EOF'
# pipewire-pulse — standalone daemon after pipewire (same user/bus).
type = process
command = /bin/sh -c "umask 000; install -m 755 -g pipewire -o pipewire -d /run/pipewire /run/pipewire/pulse 2>/dev/null || true; exec setpriv --reuid=$(id -u pipewire) --regid=$(id -g pipewire) --init-groups env PIPEWIRE_RUNTIME_DIR=/run/pipewire PULSE_RUNTIME_PATH=/run/pipewire/pulse XDG_STATE_HOME=/var/lib /usr/bin/pipewire-pulse"
smooth-recovery = yes
log-type = buffer
depends-on: pipewire
depends-on: dbus
EOF
# enable at boot — the dinit-services boot.d symlink convention
# (same form as iwd: -> ../name)
ln -s ../pipewire       "$DESTDIR/etc/dinit.d/boot.d/pipewire"
ln -s ../pipewire-pulse "$DESTDIR/etc/dinit.d/boot.d/pipewire-pulse"

# ---------- shepherd (house iwd.scm pattern) ----------
mkdir -p "$DESTDIR/etc/shepherd.d"
cat > "$DESTDIR/etc/shepherd.d/pipewire.scm" <<'EOF'
;; PipeWire — private session bus + pipewire user (Void's model); the
;; bounded bus wait is the fails-open stand-in for dinit's depends-on
;; dbus readiness (same pattern as iwd.scm).
(haliade-service!
 'pipewire
 (service
  '(pipewire)
  #:requirement '(boot dbus)
  #:start (make-forkexec-constructor
           '("/bin/sh" "-c"
             "umask 000; install -m 755 -g pipewire -o pipewire -d /run/pipewire 2>/dev/null || true; n=0; until [ -S /run/dbus/system_bus_socket ]; do n=$((n+1)); [ $n -ge 5 ] && break; sleep 1; done; exec setpriv --reuid=$(id -u pipewire) --regid=$(id -g pipewire) --init-groups env PIPEWIRE_RUNTIME_DIR=/run/pipewire XDG_STATE_HOME=/var/lib /usr/bin/pipewire"))
  #:stop (make-kill-destructor)
  #:respawn? #t))
EOF
cat > "$DESTDIR/etc/shepherd.d/pipewire-pulse.scm" <<'EOF'
;; pipewire-pulse — standalone daemon after pipewire.
(haliade-service!
 'pipewire-pulse
 (service
  '(pipewire-pulse)
  #:requirement '(pipewire)
  #:start (make-forkexec-constructor
           '("/bin/sh" "-c"
             "umask 000; install -m 755 -g pipewire -o pipewire -d /run/pipewire /run/pipewire/pulse 2>/dev/null || true; exec setpriv --reuid=$(id -u pipewire) --regid=$(id -g pipewire) --init-groups env PIPEWIRE_RUNTIME_DIR=/run/pipewire PULSE_RUNTIME_PATH=/run/pipewire/pulse XDG_STATE_HOME=/var/lib /usr/bin/pipewire-pulse"))
  #:stop (make-kill-destructor)
  #:respawn? #t))
EOF

# ---------- openrc: enable-at-boot runlevel links (parity with dinit's
# boot.d symlinks; same relative form the rootfs images use) ----------
mkdir -p "$DESTDIR/etc/runlevels/default"
ln -s ../../init.d/pipewire       "$DESTDIR/etc/runlevels/default/pipewire"
ln -s ../../init.d/pipewire-pulse "$DESTDIR/etc/runlevels/default/pipewire-pulse"
