return {
  name    = "hypridle",
  version = "0.1.8",
  summary = "Hyprland idle management daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hypridle/hypridle-0.1.8.tar.gz",
  sha256  = "d57532ab6d95a612cdb94b6de11dc882a78b7f258a5512ceb86f3619673ed1e1",
  deps    = { "glibc", "wayland", "wayland-protocols", "hyprland-protocols", "hyprlang", "hyprutils", "sdbus-cpp", "hyprwayland-scanner" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/hypridle --version")
  end,
}
