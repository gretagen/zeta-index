return {
  name    = "iniswap",
  version = "1.2.0",
  summary = "Swap init systems (openrc/runit) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.2.0.tar.gz",
  sha256  = "d922be5dfd8055fbae0ff17febff2d8a9459eedf234f3ac81afc1eabb3f5a4cd",
  deps    = { "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap")
  end,
}
