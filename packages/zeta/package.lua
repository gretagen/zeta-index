return {
  name    = "zeta",
  version = "1.0.66",
  summary = "Zeta package manager for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.66.tar.gz",
  sha256  = "171974ec32051c86a649c02f3ddee7ce712b180ced517ae837b757cb1a4d9673",
  deps    = { "lua", "patchelf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua && for f in " .. p.install_root .. "/usr/lib/zeta/zeta.lua " .. p.install_root .. "/usr/lib/zeta/lib/*.lua; do lua -e \"assert(loadfile('$f'))\" || exit 1; done && grep -q -- '-Delete' " .. p.install_root .. "/usr/bin/zeta && ! grep -q -- '-Remove' " .. p.install_root .. "/usr/bin/zeta && grep -q -- '-Delete' " .. p.install_root .. "/usr/lib/zeta/lib/cli.lua && ! grep -q -- '-Remove' " .. p.install_root .. "/usr/lib/zeta/lib/cli.lua && " .. p.install_root .. "/usr/bin/zeta -Help | grep -q 'Usage: zeta'")
  end,
}
