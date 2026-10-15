return {
  name    = "zeta",
  version = "1.0.57",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.57.tar.zst",
  sha256  = "67bddf0d9bade5bae5ffcd7185ef7adbe4d7e3f9d447499b72dc4c2f06c105d6",
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
