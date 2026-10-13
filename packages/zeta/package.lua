return {
  name    = "zeta",
  version = "1.0.55",
  summary = "Zeta package manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta/zeta-1.0.55.tar.zst",
  sha256  = "2d1a35331e03c094f14f8d13fc26708a3437694693f46ada2bcfe48192f25218",
  deps    = { "lua", "patchelf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta && test -f " .. p.install_root .. "/usr/lib/zeta/zeta.lua && ! test -f " .. p.install_root .. "/usr/lib/zeta/lib/adopt.lua")
  end,
}
