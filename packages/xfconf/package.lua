return {
  name    = "xfconf",
  version = "4.20.0",
  summary = "Flexible, easy-to-use configuration management system for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfconf/xfconf-4.20.0.tar.gz",
  sha256  = "69e0339d25c3655e0584832047dec9792226bed78f815f4e93d95a7dcb118331",
  deps    = { "glibc", "libxfce4util", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxfconf-0.so.3 -a -e " .. p.install_root .. "/usr/lib/xfce4/xfconf/xfconfd")
  end,
}
