return {
  name    = "nacelle",
  version = "3.1.0",
  summary = "Haliade declarative definition system and house management (nacelle)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nacelle/nacelle-3.1.0.tar.gz",
  sha256  = "116dffe37d8c99057cc7e752ce7c77069ec7e722c3fa37db4cafd7191d87533d",
  deps    = { "lua", "bash", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nacelle && test -f " .. p.install_root .. "/usr/lib/nacelle/sync.lua && test -f " .. p.install_root .. "/usr/lib/nacelle/plugins.lua && test -f " .. p.install_root .. "/usr/lib/nacelle/config.lua && test -f " .. p.install_root .. "/usr/lib/nacelle/registry.lua && test -f " .. p.install_root .. "/usr/lib/nacelle/house-handlers/house_sync.lua && test -f " .. p.install_root .. "/usr/lib/nacelle/house-handlers/config.lua && test -d " .. p.install_root .. "/usr/lib/nacelle/house-handlers/house_generators && test -f " .. p.install_root .. "/usr/lib/nacelle/iniswap/systemd.sh && test -f " .. p.install_root .. "/usr/lib/nacelle/iniswap/shepherd.sh && test -f " .. p.install_root .. "/usr/lib/nacelle/generators/shepherd-services.lua && test ! -e " .. p.install_root .. "/usr/lib/nacelle/house-handlers/house-sync && " .. p.install_root .. "/usr/bin/nacelle help | grep -q 'Usage: nacelle' && " .. p.install_root .. "/usr/bin/nacelle help | grep -q 'repower' && " .. p.install_root .. "/usr/bin/nacelle help | grep -q 'see-registered' && " .. p.install_root .. "/usr/bin/nacelle help | grep -q 'enable-generator' && ! grep -rq '/usr/lib/declaration\\|/usr/lib/house-handlers\\|/etc/haliade' " .. p.install_root .. "/usr/lib/nacelle " .. p.install_root .. "/usr/bin/nacelle && lua -e 'assert(loadfile(\"" .. p.install_root .. "/usr/lib/nacelle/registry.lua\"))' && lua -e 'assert(loadfile(\"" .. p.install_root .. "/usr/lib/nacelle/generators/shepherd-services.lua\"))' && lua -e 'package.path=\"" .. p.install_root .. "/usr/lib/nacelle/?.lua;" .. p.install_root .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path; local p=require(\"plugins\"); local l=p.enabled_generators(\"/nonexistent/enabled_modules.lua\"); assert(type(l)==\"table\" and #l>=20)'")
  end,
}
