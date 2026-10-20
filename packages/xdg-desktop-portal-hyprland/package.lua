return {
  name    = "xdg-desktop-portal-hyprland",
  version = "1.4.1-2",
  summary = "Hyprland backend for xdg-desktop-portal (screen sharing, file picker, screencast)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-desktop-portal-hyprland/xdg-desktop-portal-hyprland-1.4.1-2.tar.gz",
  sha256  = "e96a49e81e49a09cd740700341e3909e1b4ce999a0f28bc701bdd203859353ac",
  deps    = { "glibc", "hyprland", "hyprlang", "hyprutils", "pipewire", "sdbus-cpp", "libdrm", "wayland", "libuuid", "pixman", "systemd-libs", "expat", "libffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/libexec/xdg-desktop-portal-hyprland && test -f " .. p.install_root .. "/usr/bin/hyprland-share-picker")
  end,
}
