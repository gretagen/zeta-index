return {
  name    = "declaration",
  version = "1.5.1",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/declaration/declaration-1.5.1.tar.gz",
  sha256  = "31bbf2ef5370f520a11492702028b631ea3557335fc6258a185c9e7543121978",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators && test -f " .. p.install_root .. "/usr/lib/declaration/iniswap/dinit.sh")
  end,
}
