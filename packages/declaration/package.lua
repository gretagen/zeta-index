return {
  name    = "declaration",
  version = "1.5.2",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/declaration/declaration-1.5.2.tar.gz",
  sha256  = "82ce67a713dc741f6dc814a5a736466b59fc09e532e0991639521067fe5457ae",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators && test -f " .. p.install_root .. "/usr/lib/declaration/iniswap/dinit.sh")
  end,
}
