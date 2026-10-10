return {
  name    = "nix-declarative-helper",
  version = "1.3",
  summary = "Declare nixpkgs packages from definition.lua (extra generator for declaration)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nix-declarative-helper/nix-declarative-helper-1.3.tar.gz",
  sha256  = "d422557a05c3a32f93fa0aa338b0f352a6bbfa93ee13ae3a5c9dafd7c2d537c1",
  deps    = { "declaration" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/nix-declarative-helper")
    p:run("test -f " .. r .. "/usr/lib/declaration/generators/nixpkgs.lua")
    p:run("grep -q /nix/var/nix/profiles/default " .. r .. "/usr/lib/declaration/generators/nixpkgs.lua")
    -- plugin-config ships and registers the section when run in config.lua's env
    p:run("test -f " .. r .. "/etc/haliade/plugin-configs/nixpkgs.lua")
    p:run("lua -e 'local fd=assert(io.open(\"" .. r .. "/etc/haliade/plugin-configs/nixpkgs.lua\")); local src=fd:read(\"*a\"); fd:close(); local d,s={},{}; local env=setmetatable({defaults=d,schema=s},{__index=_G}); local fn=assert(load(src,\"@nixpkgs\",\"t\",env)); fn(); assert(d[\"nixpkgs\"]~=nil and s[\"nixpkgs\"]==\"table\")'")
    -- help documents the new enable path (no --genconfig anymore)
    p:run(r .. "/usr/bin/nix-declarative-helper --help >/dev/null")
    p:run(r .. "/usr/bin/nix-declarative-helper --help | grep -q enabled_modules.lua")
    p:run("test \"$(" .. r .. "/usr/bin/nix-declarative-helper --help | grep -c genconfig)\" -eq 0")
    p:run(r .. "/usr/bin/nix-declarative-helper --verifynix || :")
    -- generator: an installed kdePackages.* element (Name != attr tail) is not
    -- re-planned, and removals target the ELEMENT name (fake shell_output /
    -- read_file / change — no real nix involved)
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/declaration/generators/?.lua;\" .. package.path; local g=require(\"nixpkgs\"); local L=\"Name:               dolphin\\n\"..\"Flake attribute:    legacyPackages.x86_64-linux.kdePackages.dolphin\\n\"..\"Original flake URL: flake:nixpkgs\\n\"; local function mk(listing,declared) local s={ch={},sh={}}; s.shell_output=function(c) if c==\"command -v nix\" then return \"/bin/nix\" end if c:match(\"^nix profile list\") then return listing end return \"\" end; s.read_file=function(p) if p==\"/var/db/declared-nixpkgs\" then return declared or \"\" end return nil end; s.change=function(t,sec,tgt,det,ap) local c={type=t,section=sec,target=tgt,detail=det,ap=ap}; table.insert(s.ch,c); return c end; s.shell=function(c) table.insert(s.sh,c); return true end; return s end; local s=mk(L,\"nixpkgs#kdePackages.dolphin\\n\"); g.plan({[\"nixpkgs\"]={\"nixpkgs#kdePackages.dolphin\"}},s); assert(#s.ch==0,\"dolphin re-churn\"); local s2=mk(\"\",\"\"); g.plan({[\"nixpkgs\"]={\"nixpkgs#fastfetch\"}},s2); assert(#s2.ch==1 and s2.ch[1].type==\"+\",\"missing ref\"); local s3=mk(L,\"nixpkgs#kdePackages.dolphin\\n\"); g.plan({[\"nixpkgs\"]={}},s3); assert(#s3.ch==1 and s3.ch[1].type==\"-\",\"no removal\"); s3.ch[1].ap(nil,s3); assert(s3.sh[1]==\"nix profile remove --profile /nix/var/nix/profiles/default dolphin\" and not s3.sh[1]:find(\"kdePackages\"),\"element-name remove\"); print(\"nixpkgs resolution OK\")'")
  end,
}