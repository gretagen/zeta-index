return {
  name    = "zeta",
  version = "1.0.61",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.61.tar.zst",
  sha256  = "7f4130ec08b73db01ce9d53a1f8ce1deefdd0ddbb4d20da8e5f0815855de37f7",
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
