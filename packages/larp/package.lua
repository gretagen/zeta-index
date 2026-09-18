return {
  name    = "larp",
  version = "1.0.0",
  summary = "A simple script that displays a larp ASCII image",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/larp/larp-1.0.0.tar.gz",
  sha256  = "bbd877ee64468e0053dc9dcccc74e9850eb82e602296f303c9eb104e5975df4c",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/larp")
  end,
}
