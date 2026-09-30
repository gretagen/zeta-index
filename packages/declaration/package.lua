return {
  name    = "declaration",
  version = "1.5.5",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/declaration/declaration-1.5.5.tar.gz",
  sha256  = "4cea31bc9885adf1a287a0f0bbbd639c869802617ce16eba5962386eccfcf21a",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators && test -f " .. p.install_root .. "/usr/lib/declaration/iniswap/dinit.sh")
  end,
}
