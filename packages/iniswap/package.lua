return {
  name    = "iniswap",
  version = "1.3.0",
  summary = "Swap init systems (openrc/runit/dinit) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.3.0.tar.gz",
  sha256  = "9b213df9baed404351602787bd49b9a762f0a262fc747b01d5217d66c2c43421",
  deps    = { "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap")
  end,
}