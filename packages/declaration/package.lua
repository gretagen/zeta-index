return {
  name    = "declaration",
  version = "1.6.0",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/declaration/declaration-1.6.0.tar.gz",
  sha256  = "b838e8e510b84701a07a604c9e3ea5c37bcb927fb37c1c7fc7b25d4ef51ce776",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/haliade-synchronize && test -f " .. r .. "/usr/lib/declaration/sync.lua && test -f " .. r .. "/usr/lib/declaration/plugins.lua && test -d " .. r .. "/usr/lib/declaration/generators && test -f " .. r .. "/usr/lib/declaration/iniswap/dinit.sh")
    -- plugins.lua: missing enable file → built-in fallback list
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/declaration/?.lua;\" .. package.path; local p=require(\"plugins\"); local l=p.enabled_generators(\"/nonexistent/enabled_modules.lua\"); assert(type(l)==\"table\" and #l>=20)'")
    -- plugins.lua: user enable file using the no-return local form (cwd = work dir)
    p:run("printf '%s\\n' 'local enabled_generators = {' '\"edit\",' '\"ssh\",' '}' > enabled.lua && lua -e 'package.path=\"" .. r .. "/usr/lib/declaration/?.lua;\" .. package.path; local p=require(\"plugins\"); local l=p.enabled_generators(\"enabled.lua\"); assert(#l==2 and l[1]==\"edit\" and l[2]==\"ssh\")'")
    -- config.lua: plugin-config adds section default+schema, user definition wins
    p:run("mkdir -p pc && printf '%s\\n' 'defaults[\"nixpkgs\"] = {}' 'schema[\"nixpkgs\"] = \"table\"' > pc/nixpkgs.lua && printf '%s\\n' 'return { [\"nixpkgs\"] = { \"nixpkgs#fastfetch\" } }' > def.lua && lua -e 'package.path=\"" .. r .. "/usr/lib/declaration/?.lua;\" .. package.path; local c=require(\"config\"); local cfg=assert(c.load(\"def.lua\", \"pc\")); assert(cfg[\"nixpkgs\"][1]==\"nixpkgs#fastfetch\")'")
    -- config.lua: broken plugin-config hard-errors naming the file
    p:run("printf '%s\\n' 'local x = (' > pc/broken.lua && lua -e 'package.path=\"" .. r .. "/usr/lib/declaration/?.lua;\" .. package.path; local c=require(\"config\"); local _,err=c.load(\"def.lua\", \"pc\"); assert(err and err:find(\"broken.lua\"))'")
  end,
}