return {
  name    = "xwayland",
  version = "24.1.13",
  summary = "X server for Wayland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xwayland/xwayland-24.1.13.tar.gz",
  sha256  = "e4439b3b51a571164459b240a66fa22844972174f27262c886b9aac597a36752",
  deps    = { "glibc", "wayland", "wayland-protocols", "xkbcommon", "xorgproto", "libxcb", "libXau", "libXdmcp", "pixman", "libdrm", "libepoxy", "libglvnd", "mesa-drivers", "xtrans", "libxcvt", "libxshmfence", "libXfont2", "libfontenc", "libpciaccess", "xkbcomp", "xkeyboard-config" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/Xwayland")
  end,
}
