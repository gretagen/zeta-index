return {
  name    = "libxfce4ui",
  version = "4.20.0",
  summary = "Widgets library for the Xfce UI",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxfce4ui/libxfce4ui-4.20.0.tar.gz",
  sha256  = "9357935269ac3460ba1f4ada9063cfccc1f082459d61347c4fa9a604bf714cec",
  deps    = { "glibc", "libxfce4util", "gtk3", "libxklavier", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxfce4ui-2.so.0")
  end,
}
