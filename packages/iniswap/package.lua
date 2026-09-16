return {
  name    = "iniswap",
  version = "1.0.0",
  summary = "Swap init systems (openrc/runit) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/iniswap/iniswap-1.0.0.tar.gz",
  sha256  = "f766bf57e4a65d220f70c2d8c64d2cb45cbb8f0f9d6dfff18be6678669b4c786",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap")
  end,
}
