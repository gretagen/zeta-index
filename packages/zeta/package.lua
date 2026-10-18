return {
  name    = "zeta",
  version = "1.0.60",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.60.tar.zst",
  sha256  = "04b80356fcd639edf74348493dcd235edcdaacad5ec385473fa8a00cb2983b9e",
  deps    = { "lua", "patchelf" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/zeta && test -f " .. r .. "/usr/lib/zeta/zeta.lua"
      .. " && ! test -f " .. r .. "/usr/lib/zeta/lib/adopt.lua"
      .. " && for f in " .. r .. "/usr/lib/zeta/zeta.lua " .. r .. "/usr/lib/zeta/lib/*.lua"
      .. "; do lua -e \"assert(loadfile('$f'))\" || exit 1; done")
  end,
}
