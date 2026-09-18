return {
  name    = "hyprpaper",
  version = "0.8.4",
  summary = "Hyprland wallpaper utility",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyprpaper/hyprpaper-0.8.4.tar.gz",
  sha256  = "49e6c493f7d90483821eb1218c642b7caa358bdc27b1977fb831e704ff981c95",
  deps    = { "glibc", "hyprlang", "hyprutils", "hyprtoolkit", "hyprwire", "hyprwayland-scanner", "wayland", "pixman", "libdrm" },
  archive = { strip = 1 },
}
