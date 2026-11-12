return {
  name    = "xorg-server",
  version = "21.1.26",
  summary = "X.Org X server (Xorg, Xvfb, Xephyr; modesetting, GLX + glamor)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xorg-server/xorg-server-21.1.26.tar.gz",
  sha256  = "5c2fd3e0f4695a0d1c3c45a846aa742891b5fd1a659acc6a5039022861206bb6",
  deps    = { "glibc", "libdrm", "libpciaccess", "pixman", "libXau", "libXdmcp", "libX11", "libxcb", "xcb-util", "xcb-util-wm", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "libXfont2", "libxcvt", "libxshmfence", "xkeyboard-config", "egl", "libepoxy", "mesa-drivers", "dbus", "libglvnd", "libmd", "xkbcomp", "libbsd", "libtirpc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/Xorg && test -x " .. p.install_root .. "/usr/bin/X && test -x " .. p.install_root .. "/usr/bin/Xephyr && test -x " .. p.install_root .. "/usr/bin/Xvfb && test -e " .. p.install_root .. "/usr/lib/xorg/modules/extensions/libglx.so && test -e " .. p.install_root .. "/usr/lib/xorg/modules/libglamoregl.so && test -e " .. p.install_root .. "/usr/lib/pkgconfig/xorg-server.pc")
  end,
}
