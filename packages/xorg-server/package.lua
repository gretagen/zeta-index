return {
  name    = "xorg-server",
  version = "21.1.24",
  summary = "X.Org X server (modesetting driver, GLX + glamor)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xorg-server/xorg-server-21.1.24.tar.gz",
  sha256  = "36a5e2733f5b760a7b0cec89af707dd8208af116438f1fb60188ba8ddea5b15d",
  deps    = { "glibc", "libdrm", "libpciaccess", "pixman", "libXau", "libXdmcp", "libXfont2", "libxcvt", "libxshmfence", "xkeyboard-config", "libglvnd", "libepoxy", "mesa-drivers" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/Xorg -a -e " .. p.install_root .. "/usr/lib/xorg/modules/extensions/libglx.so -a -e " .. p.install_root .. "/usr/lib/xorg/modules/libglamoregl.so")
  end,
}
