return {
  name = "hyprland",
  version = "0.56.2",
  summary = "Dynamic tiling Wayland compositor",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyprland/hyprland-0.56.2.tar.gz",
  sha256 = "e42923d0e8264f63ac52f40f502f119840c433170867e84309f18e9cc3706c41",
  deps = {
    "glibc",
    "abseil-cpp", "aquamarine", "cairo", "gcc", "glslang",
    "graphite2", "harfbuzz", "hyprcursor", "hyprgraphics", "hyprlang",
    "hyprland-protocols", "hyprutils", "hyprwayland-scanner", "hyprwire",
    "libXcursor", "libdrm", "libei", "libinput", "libjpeg-turbo",
    "libjxl", "libthai", "libzip", "lcms2", "lua",
    "muparser", "pango", "pixman", "re2", "seatd",
    "systemd-libs", "tomlplusplus", "util-linux-libs",
    "wayland", "wayland-protocols", "xkbcommon",
    "libglvnd", "mesa-drivers",
  },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x '" .. p.install_root .. "'/usr/bin/Hyprland")
    p:run("test -x '" .. p.install_root .. "'/usr/bin/hyprctl")
    p:run("readelf -d '" .. p.install_root .. "'/usr/bin/Hyprland | grep -q libhyprutils.so.13")
    p:run("test -L '" .. p.install_root .. "'/usr/bin/hyprland")
  end,
}
