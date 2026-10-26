return {
  name    = "guix-generator",
  version = "1.0",
  summary = "Declare guix packages from definition.lua (extra generator for nacelle)",
  url     = "https://raw.githubusercontent.com/gretagen/declarative-plugins/refs/heads/main/packages/guix-generator/guix-generator-1.0.tar.gz",
  sha256  = "17d2391046ac4b98871ebc6a8d14bde54e10f20b2000cc45a33b4e867458b7c0",
  deps    = { "nacelle" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/guix-generator")
    p:run("test -f " .. r .. "/usr/lib/nacelle/generators/guix.lua")
    p:run("grep -q /usr/var/guix/profiles/declared " .. r .. "/usr/lib/nacelle/generators/guix.lua")
    -- plugin-config ships and registers the section when run in config.lua's env
    p:run("test -f " .. r .. "/etc/nacelle/plugin-configs/guix.lua")
    p:run("lua -e 'local fd=assert(io.open(\"" .. r .. "/etc/nacelle/plugin-configs/guix.lua\")); local src=fd:read(\"*a\"); fd:close(); local d,s={},{}; local env=setmetatable({defaults=d,schema=s},{__index=_G}); local fn=assert(load(src,\"@guix\",\"t\",env)); fn(); assert(d[\"guix\"]~=nil and s[\"guix\"]==\"table\")'")
    -- PATH exposure ships and points at the shared profile (bin must land on
    -- every login shell, or declared packages exist but are not runnable)
    p:run("test -f " .. r .. "/etc/profile.d/guix-haliade.sh")
    p:run("grep -q /usr/var/guix/profiles/declared/bin " .. r .. "/etc/profile.d/guix-haliade.sh")
    -- help documents the enable path (no --genconfig anymore)
    p:run(r .. "/usr/bin/guix-generator --help >/dev/null")
    p:run(r .. "/usr/bin/guix-generator --help | grep -q enabled_modules.lua")
    p:run("test \"$(" .. r .. "/usr/bin/guix-generator --help | grep -c genconfig)\" -eq 0")
    p:run(r .. "/usr/bin/guix-generator --verifyguix || :")
    -- generator: a spec present in the profile is not re-planned, a missing
    -- one plans the exact `guix package -i` (fake shell_output / read_file /
    -- change — no real guix involved)
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path; local g=require(\"guix\"); local function mk(listing,declared) local s={ch={},sh={},guix=true,daemon=true}; s.shell_output=function(c) if c==\"command -v guix\" then return s.guix and \"/usr/bin/guix\" or \"\" end if c:match(\"^test %-S \") then return s.daemon and \"up\" or \"\" end if c:match(\"^guix package\") then return listing end return \"\" end; s.read_file=function(p) if p==\"/var/db/declared-guix\" then return declared or \"\" end return nil end; s.change=function(t,sec,tgt,det,ap) local c={type=t,section=sec,target=tgt,detail=det,ap=ap}; table.insert(s.ch,c); return c end; s.shell=function(c) table.insert(s.sh,c); return true end; return s end; local L=\"hello                     2.12.2                  out     /gnu/store/aaaa-hello-2.12.2\"; local s=mk(L,\"\"); g.plan({[\"guix\"]={\"hello\"}},s); assert(#s.ch==0,\"installed spec re-churn\"); local s2=mk(\"\",\"\"); g.plan({[\"guix\"]={\"hello\"}},s2); assert(#s2.ch==1 and s2.ch[1].type==\"+\" and s2.ch[1].section==\"guix\",\"missing spec\"); s2.ch[1].ap(nil,s2); assert(s2.sh[1]==\"guix package -p /usr/var/guix/profiles/declared -i hello\",\"add cmd\"); print(\"guix add resolution OK\")'")
    -- generator: version pins and outputs — a pin satisfied by the installed
    -- version plans nothing, a drifted or missing one re-applies, and a bare
    -- name is never satisfied by a hand-installed debug output
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path; local g=require(\"guix\"); local function mk(listing) local s={ch={},sh={}}; s.shell_output=function(c) if c==\"command -v guix\" then return \"/usr/bin/guix\" end if c:match(\"^test %-S \") then return \"up\" end if c:match(\"^guix package\") then return listing end return \"\" end; s.read_file=function() return \"\" end; s.change=function(t,sec,tgt,det,ap) local c={type=t,section=sec,target=tgt,detail=det,ap=ap}; table.insert(s.ch,c); return c end; s.shell=function(c) table.insert(s.sh,c); return true end; return s end; local L=\"hello                     2.12.2                  out     /gnu/store/aaaa-hello-2.12.2\"; local D=\"hello                     2.12.2                  debug   /gnu/store/bbbb-hello-2.12.2-debug\"; local s=mk(L); g.plan({[\"guix\"]={\"hello@2.12.2\"}},s); assert(#s.ch==0,\"pinned version re-churn\"); local s2=mk(L); g.plan({[\"guix\"]={\"hello@2.11.0\"}},s2); assert(#s2.ch==1 and s2.ch[1].type==\"+\",\"drifted pin\"); local s3=mk(D); g.plan({[\"guix\"]={\"hello\"}},s3); assert(#s3.ch==1 and s3.ch[1].type==\"+\",\"debug row faked a bare name\"); local s4=mk(D); g.plan({[\"guix\"]={\"hello:debug\"}},s4); assert(#s4.ch==0,\"output spec re-churn\"); print(\"guix version/output resolution OK\")'")
    -- generator: removals only touch recorded specs, target drops @version but
    -- keeps :output, and an already-gone package is un-recorded without a
    -- guix command
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path; local g=require(\"guix\"); local function mk(listing,declared) local s={ch={},sh={}}; s.shell_output=function(c) if c==\"command -v guix\" then return \"/usr/bin/guix\" end if c:match(\"^test %-S \") then return \"up\" end if c:match(\"^guix package\") then return listing end return \"\" end; s.read_file=function(p) if p==\"/var/db/declared-guix\" then return declared or \"\" end return nil end; s.change=function(t,sec,tgt,det,ap) local c={type=t,section=sec,target=tgt,detail=det,ap=ap}; table.insert(s.ch,c); return c end; s.shell=function(c) table.insert(s.sh,c); return true end; return s end; local L=\"hello                     2.12.2                  out     /gnu/store/aaaa-hello-2.12.2\"; local G=\"gcc                     12.2.0                  debug   /gnu/store/cccc-gcc-12.2.0-debug\"; local s=mk(L,\"hello\\n\"); g.plan({[\"guix\"]={}},s); assert(#s.ch==1 and s.ch[1].type==\"-\",\"removal\"); s.ch[1].ap(nil,s); assert(s.sh[1]==\"guix package -p /usr/var/guix/profiles/declared -r hello\",\"removal targets name\"); local s2=mk(L,\"hello@2.11.0\\n\"); g.plan({[\"guix\"]={}},s2); s2.ch[1].ap(nil,s2); assert(s2.sh[1]==\"guix package -p /usr/var/guix/profiles/declared -r hello\",\"version dropped from target\"); local s3=mk(G,\"gcc:debug\\n\"); g.plan({[\"guix\"]={}},s3); s3.ch[1].ap(nil,s3); assert(s3.sh[1]==\"guix package -p /usr/var/guix/profiles/declared -r gcc:debug\",\"output kept in target\"); local s4=mk(\"\",\"hello\\n\"); g.plan({[\"guix\"]={}},s4); assert(#s4.ch==1,\"record must still be dropped\"); s4.ch[1].ap(nil,s4); assert(#s4.sh==1 and s4.sh[1]:match(\"^grep\")~=nil,\"gone package must not run guix\"); print(\"guix removal resolution OK\")'")
    -- generator: gates and validation — guix missing, daemon down, malformed
    -- specs and conflicting version pins all plan conservatively
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path; local g=require(\"guix\"); local function mk(o) o=o or {}; local s={ch={},sh={},guix=o.guix~=false,daemon=o.daemon~=false}; s.shell_output=function(c) if c==\"command -v guix\" then return s.guix and \"/usr/bin/guix\" or \"\" end if c:match(\"^test %-S \") then return s.daemon and \"up\" or \"\" end if c:match(\"^guix package\") then return o.listing or \"\" end return \"\" end; s.read_file=function() return o.declared or \"\" end; s.change=function(t,sec,tgt,det,ap) local c={type=t,section=sec,target=tgt,detail=det,ap=ap}; table.insert(s.ch,c); return c end; s.shell=function(c) table.insert(s.sh,c); return true end; return s end; local s=mk({guix=false}); g.plan({[\"guix\"]={\"hello\"}},s); assert(#s.ch==0,\"no guix\"); local s2=mk({daemon=false}); g.plan({[\"guix\"]={\"hello\"}},s2); assert(#s2.ch==0,\"daemon down\"); local s3=mk({}); g.plan({[\"guix\"]={\"hello; rm -rf /\"}},s3); assert(#s3.ch==0,\"malformed spec\"); local s4=mk({}); g.plan({[\"guix\"]={\"hello@1.0\",\"hello@2.0\"}},s4); assert(#s4.ch==1 and s4.ch[1].target==\"hello@1.0\",\"conflicting pins\"); local s5=mk({}); g.plan({[\"guix\"]={\"hello\",\"hello\"}},s5); assert(#s5.ch==1,\"duplicate spec\"); print(\"guix gates OK\")'")
  end,
}
