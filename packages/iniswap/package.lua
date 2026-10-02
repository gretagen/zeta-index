return {
  name    = "iniswap",
  version = "1.4.1",
  summary = "Swap init systems (openrc/runit/dinit) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.4.1.tar.gz",
  sha256  = "20afa68e02efcd1fe2a2d98c9eb8a097897a1fa526a07410717c2941c1fb177b",
  deps    = { "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap")
  end,
}
