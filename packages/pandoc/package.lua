return {
  name    = "pandoc",
  version = "3.13",
  summary = "Universal document converter (standalone binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pandoc/pandoc-3.13.tar.gz",
  sha256  = "64810d4010e5f35cd226f5be0573b695cee81c2decde2821f1b7fbdc9e7b3b71",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pandoc")
  end,
}
