return {
  name    = "nix-generator",
  version = "1.6",
  summary = "Declare nixpkgs packages from definition.lua (extra generator for nacelle)",
  url     = "https://raw.githubusercontent.com/gretagen/declarative-plugins/refs/heads/main/packages/nix-generator/nix-generator-1.6.tar.gz",
  sha256  = "d7bf139fe973f218b10305898d1297d79dd5bb6a945881f357bf25383d809228",
  deps    = { "nacelle" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/nix-generator")
    p:run("test -f " .. r .. "/usr/lib/nacelle/generators/nixpkgs.lua")
    p:run("grep -q /nix/var/nix/profiles/default " .. r .. "/usr/lib/nacelle/generators/nixpkgs.lua")
    -- plugin-config ships and registers the section when run in config.lua's env
    p:run("test -f " .. r .. "/etc/nacelle/plugin-configs/nixpkgs.lua")
    p:run("lua -e 'local fd=assert(io.open(\"" .. r .. "/etc/nacelle/plugin-configs/nixpkgs.lua\")); local src=fd:read(\"*a\"); fd:close(); local d,s={},{}; local env=setmetatable({defaults=d,schema=s},{__index=_G}); local fn=assert(load(src,\"@nixpkgs\",\"t\",env)); fn(); assert(d[\"nixpkgs\"]~=nil and s[\"nixpkgs\"]==\"table\")'")
    -- help documents the new enable path (no --genconfig anymore)
    p:run(r .. "/usr/bin/nix-generator --help >/dev/null")
    p:run(r .. "/usr/bin/nix-generator --help | grep -q enabled_modules.lua")
    p:run("test \"$(" .. r .. "/usr/bin/nix-generator --help | grep -c genconfig)\" -eq 0")
    p:run(r .. "/usr/bin/nix-generator --verifynix || :")
    -- generator: an installed kdePackages.* element (Name != attr tail) is not
    -- re-planned, and removals target the ELEMENT name (fake shell_output /
    -- read_file / change — no real nix involved)
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path; local g=require(\"nixpkgs\"); local L=\"Name:               dolphin\\n\"..\"Flake attribute:    legacyPackages.x86_64-linux.kdePackages.dolphin\\n\"..\"Original flake URL: flake:nixpkgs\\n\"; local function mk(listing,declared) local s={ch={},sh={}}; s.shell_output=function(c) if c==\"command -v nix\" then return \"/bin/nix\" end if c:match(\"^nix profile list\") then return listing end return \"\" end; s.read_file=function(p) if p==\"/var/db/declared-nixpkgs\" then return declared or \"\" end return nil end; s.change=function(t,sec,tgt,det,ap) local c={type=t,section=sec,target=tgt,detail=det,ap=ap}; table.insert(s.ch,c); return c end; s.shell=function(c) table.insert(s.sh,c); return true end; return s end; local s=mk(L,\"nixpkgs#kdePackages.dolphin\\n\"); g.plan({[\"nixpkgs\"]={\"nixpkgs#kdePackages.dolphin\"}},s); assert(#s.ch==0,\"dolphin re-churn\"); local s2=mk(\"\",\"\"); g.plan({[\"nixpkgs\"]={\"nixpkgs#fastfetch\"}},s2); assert(#s2.ch==1 and s2.ch[1].type==\"+\",\"missing ref\"); local s3=mk(L,\"nixpkgs#kdePackages.dolphin\\n\"); g.plan({[\"nixpkgs\"]={}},s3); assert(#s3.ch==1 and s3.ch[1].type==\"-\",\"no removal\"); s3.ch[1].ap(nil,s3); assert(s3.sh[1]==\"nix profile remove --profile /nix/var/nix/profiles/default dolphin\" and not s3.sh[1]:find(\"kdePackages\"),\"element-name remove\"); print(\"nixpkgs resolution OK\")'")
    -- generator: the '#' attribute is optional — a bare flake ref
    -- (github:guibou/nixGL) is resolved by the listing's Original flake URL
    -- (element name = the package's own name, not the ref's tail), added with
    -- the bare ref, and removed by its element name
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path; local g=require(\"nixpkgs\"); local A=\"Name:               nixgl\\nFlake attribute:    packages.x86_64-linux.nixgl\\nOriginal flake URL: github:guibou/nixGL\\n\"; local function mk(listing,declared) local s={ch={},sh={}}; s.shell_output=function(c) if c==\"command -v nix\" then return \"/bin/nix\" end if c:match(\"^nix profile list\") then return listing end return \"\" end; s.read_file=function(p) if p==\"/var/db/declared-nixpkgs\" then return declared or \"\" end return nil end; s.change=function(t,sec,tgt,det,ap) local c={type=t,section=sec,target=tgt,detail=det,ap=ap}; table.insert(s.ch,c); return c end; s.shell=function(c) table.insert(s.sh,c); return true end; return s end; local s4=mk(A,\"github:guibou/nixGL\\n\"); g.plan({[\"nixpkgs\"]={\"github:guibou/nixGL\"}},s4); assert(#s4.ch==0,\"attr-less re-churn\"); local s5=mk(\"\",\"\"); g.plan({[\"nixpkgs\"]={\"github:guibou/nixGL\"}},s5); assert(#s5.ch==1 and s5.ch[1].type==\"+\",\"attr-less add\"); s5.ch[1].ap(nil,s5); assert(s5.sh[1]==\"nix profile add --profile /nix/var/nix/profiles/default github:guibou/nixGL\",\"attr-less add cmd\"); local s6=mk(A,\"github:guibou/nixGL\\n\"); g.plan({[\"nixpkgs\"]={}},s6); assert(#s6.ch==1 and s6.ch[1].type==\"-\",\"attr-less remove\"); s6.ch[1].ap(nil,s6); assert(s6.sh[1]==\"nix profile remove --profile /nix/var/nix/profiles/default nixgl\",\"attr-less element remove\"); print(\"attribute-less refs OK\")'")
  end,
}