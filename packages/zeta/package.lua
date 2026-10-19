return {
  name    = "zeta",
  version = "1.0.63",
  summary = "Zeta package manager for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.63.tar.zst",
  sha256  = "73682564eedea4fdf6e302039d29d069db3ce9c6bd30b45c5ddf47ba89120af1",
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
