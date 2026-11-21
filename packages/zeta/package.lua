return {
  name    = "zeta",
  version = "2.1",
  summary = "Zeta package manager for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-2.1.tar.gz",
  sha256  = "c857238988c32f05d634b0c8fe62bf8cb7e28c21d6b366803685143bc97e756e",
  deps    = { "lua", "patchelf", "desktop-file-utils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua && for f in " .. p.install_root .. "/usr/lib/zeta/zeta.lua " .. p.install_root .. "/usr/lib/zeta/lib/*.lua; do lua -e \"assert(loadfile('$f'))\" || exit 1; done && ! grep -q -- '-Remove' " .. p.install_root .. "/usr/bin/zeta && grep -q -- '-Delete' " .. p.install_root .. "/usr/lib/zeta/lib/cli.lua && ! grep -q -- '-Remove' " .. p.install_root .. "/usr/lib/zeta/lib/cli.lua && grep -q 'ldconfig -r' " .. p.install_root .. "/usr/lib/zeta/lib/commit.lua && " .. p.install_root .. "/usr/bin/zeta -Help | grep -q 'Usage: zeta'")
  end,
}
