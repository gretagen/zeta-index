return {
  name    = "libva-intel-driver",
  version = "2.4.1",
  summary = "Intel VA-API driver for i965 (pre-Broadwell legacy driver)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libva-intel-driver/libva-intel-driver-2.4.1.tar.gz",
  sha256  = "03cd7e16acc94f828b6e7f3087863d8ca06e99ffa3385588005b1984bdd56157",
  deps    = { "glibc", "libva", "libdrm", "wayland", "libX11", "libXext", "libxcb" },
  build   = function(p)
    p:run("meson setup build --prefix=/usr -Dwith_x11=yes -Dwith_wayland=yes")
    p:run("ninja -C build")
    p:run("DESTDIR=" .. p.install_root .. " ninja -C build install")
  end,
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/i965_drv_video.so")
  end,
}
