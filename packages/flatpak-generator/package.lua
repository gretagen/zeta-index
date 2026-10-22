return {
  name    = "flatpak-generator",
  version = "1.2",
  summary = "Declare flatpak apps from definition.lua (extra generator for nacelle)",
  url     = "https://raw.githubusercontent.com/gretagen/declarative-plugins/refs/heads/main/packages/flatpak-generator/flatpak-generator-1.2.tar.gz",
  sha256  = "88c6f383f2939e53da373911651b5c8b0ae402bd03ccc9a8bb8ff678b49ccf59",
  deps    = { "nacelle" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/flatpak-generator")
    p:run("test -f " .. r .. "/usr/lib/nacelle/generators/flatpak.lua")
    p:run("grep -q -- '--system' " .. r .. "/usr/lib/nacelle/generators/flatpak.lua")
    -- plugin-config ships and registers the section when run in config.lua's env
    p:run("test -f " .. r .. "/etc/nacelle/plugin-configs/flatpak.lua")
    p:run("lua -e 'local fd=assert(io.open(\"" .. r .. "/etc/nacelle/plugin-configs/flatpak.lua\")); local src=fd:read(\"*a\"); fd:close(); local d,s={},{}; local env=setmetatable({defaults=d,schema=s},{__index=_G}); local fn=assert(load(src,\"@flatpak\",\"t\",env)); fn(); assert(d[\"flatpak\"]~=nil and s[\"flatpak\"]==\"table\")'")
    -- help documents the new enable path (no --genconfig anymore)
    p:run(r .. "/usr/bin/flatpak-generator --help >/dev/null")
    p:run(r .. "/usr/bin/flatpak-generator --help | grep -q enabled_modules.lua")
    p:run("test \"$(" .. r .. "/usr/bin/flatpak-generator --help | grep -c genconfig)\" -eq 0")
    p:run(r .. "/usr/bin/flatpak-generator --verifyflatpak || :")
    -- generator: a bare appid installs system-wide via flathub; a missing flathub
    -- remote is added first; a missing NON-flathub remote is skipped; a declared
    -- app no longer wanted is uninstalled system-wide (fake shell_output /
    -- read_file / change — no real flatpak involved)
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path; local g=require(\"flatpak\"); local function mk(o) local s={ch={},sh={},rem=o.rem or {flathub=true},inst=o.inst or {},decl=o.decl or \"\"}; s.shell_output=function(c) if c==\"command -v flatpak\" then return \"/bin/flatpak\" end if c:match(\"^flatpak remotes\") then local t={} for k in pairs(s.rem) do t[#t+1]=k end return table.concat(t,\"\\n\") end if c:match(\"^flatpak list\") then return table.concat(s.inst,\"\\n\") end return \"\" end; s.read_file=function(q) if q==\"/var/db/declared-flatpak\" then return s.decl end return nil end; s.change=function(t,sec,tgt,det,ap) local c={type=t,target=tgt,ap=ap} table.insert(s.ch,c) return c end; s.shell=function(c) table.insert(s.sh,c) return true end; return s end; local s=mk({}); local ch=g.plan({[\"flatpak\"]={\"org.mozilla.firefox\"}},s); assert(#ch==1 and ch[1].type==\"+\",\"bare add\"); ch[1].ap(nil,s); assert(s.sh[1]==\"flatpak install --system --noninteractive flathub org.mozilla.firefox\",\"install cmd\"); local s2=mk({rem={}}); assert(#g.plan({[\"flatpak\"]={\"org.mozilla.firefox\"}},s2)==2,\"flathub remote add\"); local s3=mk({}); assert(#g.plan({[\"flatpak\"]={\"alt:org.gnome.Calculator\"}},s3)==0,\"skip missing remote\"); local s4=mk({inst={\"org.videolan.VLC\"},decl=\"org.videolan.VLC\\n\"}); local ch4=g.plan({[\"flatpak\"]={}},s4); assert(#ch4==1 and ch4[1].type==\"-\",\"removal\"); ch4[1].ap(nil,s4); assert(s4.sh[1]==\"flatpak uninstall --system --noninteractive org.videolan.VLC\",\"uninstall cmd\"); print(\"flatpak resolution OK\")'")
  end,
}
