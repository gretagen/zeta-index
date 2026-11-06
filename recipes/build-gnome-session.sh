#!/bin/sh
# gnome-session 51.0 (BLFS SysV flow) + the dinit reality: gnome-session
# 51's session leader is systemd-only upstream (leader-systemd.c aborts
# without org.freedesktop.systemd1; the legacy fallback was removed in 51),
# so on any non-systemd init the shipped wayland-session desktop launches
# this package's gnome-wayland-session wrapper instead: it starts the
# per-plugin gsd daemons on the session bus and execs gnome-shell, which
# is the session core. Under systemd the wrapper works equally (plain
# dbus-session + plain executables), keeping the flow init-agnostic.
set -e

meson setup build --prefix=/usr --buildtype=release --libdir=/usr/lib \
  --wrap-mode=nodownload -Dman=false -Ddocbook=false \
  -Dsystemduserunitdir=/tmp
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install

# The wayland session desktop: dbus-run-session gnome-session works only
# with a systemd user manager; point it at the wrapper instead.
cat > "$DESTDIR/usr/bin/gnome-wayland-session" <<'EOF'
#!/bin/sh
# GNOME on Wayland without a systemd user manager (dinit/openrc/runit and
# systemd alike): start the gsd plugin daemons gnome-session would have
# started via user units, then run the shell, which is the session core.
# The session bus comes from dbus-run-session; ibus, gvfs, the calendar
# server and friends activate on it on demand.
exec dbus-run-session sh -c '
    for gsd in /usr/libexec/gsd-*; do
        [ -x "$gsd" ] && "$gsd" &
    done
    exec /usr/bin/gnome-shell --wayland
'
EOF
chmod 755 "$DESTDIR/usr/bin/gnome-wayland-session"
sed -i 's|^Exec=.*|Exec=/usr/bin/gnome-wayland-session|' \
  "$DESTDIR/usr/share/wayland-sessions/gnome.desktop"
