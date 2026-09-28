return {
  name    = "genkernel",
  version = "2",
  summary = "Haliade OS kernel generation script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/genkernel/genkernel-2.tar.gz",
  sha256  = "7a05c109e15f21d7bd7d35c93ea389614847d20b8b84aa24c404eb932b5e84a1",
  deps    = { "bash", "curl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genkernel")
  end,
}
