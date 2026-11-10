return {
  name    = "zeta",
  version = "1.0.72",
  summary = "Zeta package manager for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.72.tar.gz",
  sha256  = "067a89af86fd39d3cf34b00e4789c5c21148641513a239f225ebbef4f4700a6a",
  deps    = { "lua", "patchelf", "desktop-file-utils" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua && for f in " .. p.install_root .. "/usr/lib/zeta/zeta.lua " .. p.install_root .. "/usr/lib/zeta/lib/*.lua; do lua -e \"assert(loadfile('$f'))\" || exit 1; done && grep -q -- '-Delete' " .. p.install_root .. "/usr/bin/zeta && ! grep -q -- '-Remove' " .. p.install_root .. "/usr/bin/zeta && grep -q -- '-Delete' " .. p.install_root .. "/usr/lib/zeta/lib/cli.lua && ! grep -q -- '-Remove' " .. p.install_root .. "/usr/lib/zeta/lib/cli.lua && " .. p.install_root .. "/usr/bin/zeta -Help | grep -q 'Usage: zeta'")
  end,
}
