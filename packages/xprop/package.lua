return {
  name    = "xprop",
  version = "1.2.8",
  summary = "Property displayer for X",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xprop/xprop-1.2.8.tar.gz",
  sha256  = "c7be8223e2d6ad3524d1ed42f7e5b4bbdf693f3a68cd5033cff19b7ee9aeed30",
  deps    = { "glibc", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xprop")
  end,
}
