return {
  name    = "nacelle",
  version = "2.0.0",
  summary = "Haliade system definition and house synchronizer (nacelle)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nacelle/nacelle-2.0.0.tar.gz",
  sha256  = "3c9a47fac7753fca47a2fbdc1b3e5beb11c4f6fccb5708cf055c0bc62d44c8c8",
  deps    = { "lua", "bash", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nacelle && test -f " .. p.install_root .. "/usr/lib/nacelle/sync.lua && test -f " .. p.install_root .. "/usr/lib/nacelle/plugins.lua && test -f " .. p.install_root .. "/usr/lib/nacelle/config.lua && test -f " .. p.install_root .. "/usr/lib/nacelle/house-handlers/house_sync.lua && test -f " .. p.install_root .. "/usr/lib/nacelle/house-handlers/config.lua && test -d " .. p.install_root .. "/usr/lib/nacelle/house-handlers/house_generators && test -f " .. p.install_root .. "/usr/lib/nacelle/iniswap/systemd.sh && test ! -e " .. p.install_root .. "/usr/lib/nacelle/house-handlers/house-sync && " .. p.install_root .. "/usr/bin/nacelle help | grep -q 'Usage: nacelle' && ! grep -rq '/usr/lib/declaration\\|/usr/lib/house-handlers\\|/etc/haliade' " .. p.install_root .. "/usr/lib/nacelle " .. p.install_root .. "/usr/bin/nacelle && lua -e 'package.path=\"" .. p.install_root .. "/usr/lib/nacelle/?.lua;" .. p.install_root .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path; local p=require(\"plugins\"); local l=p.enabled_generators(\"/nonexistent/enabled_modules.lua\"); assert(type(l)==\"table\" and #l>=20)'")
  end,
}
