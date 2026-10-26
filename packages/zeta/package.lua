return {
  name    = "zeta",
  version = "1.0.64",
  summary = "Zeta package manager for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.64.tar.gz",
  sha256  = "3e043179bc47fc683af7e7ab8c1bdd88bbca38eadd6a352b2274fe2ec5378bbe",
  deps    = { "lua", "patchelf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua && for f in " .. p.install_root .. "/usr/lib/zeta/zeta.lua " .. p.install_root .. "/usr/lib/zeta/lib/*.lua; do lua -e \"assert(loadfile('$f'))\" || exit 1; done && grep -q -- '-Delete' " .. p.install_root .. "/usr/bin/zeta && ! grep -q -- '-Remove' " .. p.install_root .. "/usr/bin/zeta && grep -q -- '-Delete' " .. p.install_root .. "/usr/lib/zeta/lib/cli.lua && ! grep -q -- '-Remove' " .. p.install_root .. "/usr/lib/zeta/lib/cli.lua && " .. p.install_root .. "/usr/bin/zeta -Help | grep -q 'Usage: zeta'")
  end,
}
