return {
  name    = "declaration",
  version = "1.6.1",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/declaration/declaration-1.6.1.tar.gz",
  sha256  = "3348cfe746ada7dd5f0a062371bc5452ee5227be52400e05d84a1b977ae20d24",
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
    -- users generator: existing-account group+shell convergence (fake sync, no
    -- real /etc files or useradd/usermod — plan generation only)
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/declaration/generators/?.lua;\" .. package.path; local g=require(\"users\"); local P=\"root:x:0:0:root:/root:/bin/bash\\n\"..\"alice:x:1000:1000:Alice:/home/alice:/bin/thesh\\n\"; local G=\"wheel:x:10:root,alice\\n\"..\"audio:x:29:pulse,alice\\n\"..\"video:x:44:alice\\n\"..\"tty:x:5:root,alice\\n\"..\"input:x:106:\\n\"; local function mk() local s={ch={}}; s.read_file=function(p) if p==\"/etc/passwd\" then return P end if p==\"/etc/group\" then return G end return nil end; s.change=function(t,sec,tgt,det) local c={type=t,section=sec,target=tgt,detail=det}; table.insert(s.ch,c); return c end; s.shell=function() return true end; s.ensure_dir=function() return true end; s.write_file=function() return true end; return s end; local s=mk(); local cfg={users={alice={groups={\"wheel\",\"audio\",\"video\",\"tty\",\"input\"}}}}; g.plan(cfg,s); assert(#s.ch==1 and s.ch[1].type==\"~\" and s.ch[1].target==\"alice groups\" and s.ch[1].detail==\"wheel,audio,video,tty,input\", \"drift\"); local s2=mk(); g.plan({users={alice={groups={\"wheel\",\"audio\",\"video\",\"tty\"},shell=\"/bin/thesh\"}}},s2); assert(#s2.ch==0, \"no-drift\"); local s3=mk(); g.plan({users={alice={shell=\"/bin/bash\"}}},s3); assert(#s3.ch==1 and s3.ch[1].target==\"alice shell\", \"shell\"); local s4=mk(); g.plan({users={alice={groups={\"wheel\",\"ghost\"}}}},s4); assert(#s4.ch==0, \"missing-group\"); print(\"users convergence OK\")'")
  end,
}