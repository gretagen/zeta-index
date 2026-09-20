return {
  name    = "mujs",
  version = "1.3.9",
  summary = "An embeddable Javascript interpreter in C",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/mujs/mujs.pkg.tar.zst",
  sha256  = "ad67313c9bcef49e1d397490daac3813394d690b15c85fbcf1d696f920dda58b",
  deps    = { "readline", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
