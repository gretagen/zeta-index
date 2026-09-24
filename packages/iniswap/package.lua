return {
  name    = "iniswap",
  version = "1.4.0",
  summary = "Swap init systems (openrc/runit/dinit) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.4.0.tar.gz",
  sha256  = "53de196eb35885e121296e9e6611dedcb235cef06e82e137ed6f1f1debc1c0ce",
  deps    = { "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap")
  end,
}