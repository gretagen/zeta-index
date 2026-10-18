return {
  name    = "xdg-desktop-portal-wlr",
  version = "0.8.4",
  summary = "xdg-desktop-portal backend for wlroots (screencast, screenshot)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-desktop-portal-wlr/xdg-desktop-portal-wlr-0.8.4.tar.gz",
  sha256  = "0e869fa53615ad8f60cda6760aa15229a5ee23798fcf94b512c60610f052e1c5",
  deps    = { "glibc", "wayland", "libdrm", "mesa-drivers", "pipewire", "systemd-libs", "inih" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/xdg-desktop-portal-wlr && test -f " .. p.install_root .. "/usr/share/xdg-desktop-portal/portals/wlr.portal && test -f " .. p.install_root .. "/usr/share/dbus-1/services/org.freedesktop.impl.portal.desktop.wlr.service")
  end,
}
