return {
  name    = "zeta",
  version = "1.0.62",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.62.tar.zst",
  sha256  = "eed5fabb578a6cd4d23abb515a7ebeb90b480b478284cfa305d85812d03f4526",
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
