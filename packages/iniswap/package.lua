return {
  name    = "iniswap",
  version = "1.1.0",
  summary = "Swap init systems (openrc/runit) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.1.0.tar.gz",
  sha256  = "1e77bb32de99bd30f153b9abd663def40b3b0f758b017765e0a39590b8b30ba7",
  deps    = { "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap")
  end,
}
