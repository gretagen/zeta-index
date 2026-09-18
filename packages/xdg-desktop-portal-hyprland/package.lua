return {
  name    = "xdg-desktop-portal-hyprland",
  version = "1.4.1",
  summary = "Hyprland backend for xdg-desktop-portal (screen sharing, file picker, screencast)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-desktop-portal-hyprland/xdg-desktop-portal-hyprland-1.4.1.tar.gz",
  sha256  = "ad2bf7951e16d3716bb35ed3211d8933935fd14c3ba6613ef75a5ba50c5b4138",
  deps    = { "glibc", "hyprland", "hyprlang", "hyprutils", "pipewire", "sdbus-cpp", "libdrm", "wayland", "libuuid", "pixman", "systemd-libs", "expat", "libffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/libexec/xdg-desktop-portal-hyprland && test -f " .. p.install_root .. "/usr/bin/hyprland-share-picker")
  end,
}
