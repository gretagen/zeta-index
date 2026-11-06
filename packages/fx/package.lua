return {
  name    = "fx",
  version = "40.0.1",
  summary = "Terminal JSON viewer and processor (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fx/fx-40.0.1.tar.gz",
  sha256  = "1f5899afcd12d7f9154d7f2005db7f7b9e0c11a661ffc80d5100f186ad32066a",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fx")
  end,
}
