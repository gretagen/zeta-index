return {
  name    = "pip-generator",
  version = "1.1",
  summary = "Declare pip packages from definition.lua (extra generator for nacelle)",
  url     = "https://raw.githubusercontent.com/gretagen/declarative-plugins/refs/heads/main/packages/pip-generator/pip-generator-1.1.tar.gz",
  sha256  = "37e202e88e56ab712a88e80b691ac06742267ac56d255b2f0c59c3a11fed2e1d",
  deps    = { "nacelle" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/pip-generator")
    p:run("test -f " .. r .. "/usr/lib/nacelle/generators/pip.lua")
    -- installs go to the system environment with the PEP 668 override
    p:run("grep -q -- \"--break-system-packages\" " .. r .. "/usr/lib/nacelle/generators/pip.lua")
    p:run("! grep -q /usr/var/pip/declared " .. r .. "/usr/lib/nacelle/generators/pip.lua")
    -- plugin-config ships and registers the section when run in config.lua's env
    p:run("test -f " .. r .. "/etc/nacelle/plugin-configs/pip.lua")
    p:run("lua -e 'local fd=assert(io.open(\"" .. r .. "/etc/nacelle/plugin-configs/pip.lua\")); local src=fd:read(\"*a\"); fd:close(); local d,s={},{}; local env=setmetatable({defaults=d,schema=s},{__index=_G}); local fn=assert(load(src,\"@pip\",\"t\",env)); fn(); assert(d[\"pip\"]~=nil and s[\"pip\"]==\"table\")'")
    -- help documents the enable path (no --genconfig anymore)
    p:run(r .. "/usr/bin/pip-generator --help >/dev/null")
    p:run(r .. "/usr/bin/pip-generator --help | grep -q enabled_modules.lua")
    p:run("test \"$(" .. r .. "/usr/bin/pip-generator --help | grep -c genconfig)\" -eq 0")
    p:run(r .. "/usr/bin/pip-generator --verifypip || :")
    -- generator: a spec present in the environment is not re-planned, a
    -- missing one plans the exact `pip install --break-system-packages`
    -- (fake shell_output / read_file / change — no real pip involved)
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path\n" .. [[local g=require("pip")
local function mk(o) o=o or {}
  local s={ch={},sh={},py=o.py~=false,pipok=o.pipok~=false}
  s.shell_output=function(c)
    if c=="command -v python3" then return s.py and "/usr/bin/python3" or "" end
    if c=="command -v pip" then return s.pipok and "/usr/bin/pip" or "" end
    if c:match("^pip list") then return o.listing or "" end
    return ""
  end
  s.read_file=function(path)
    if path=="/var/db/declared-pip" then return o.declared or "" end
    return nil
  end
  s.change=function(t,sec,tgt,det,ap)
    local c={type=t,section=sec,target=tgt,detail=det,ap=ap}
    table.insert(s.ch,c); return c
  end
  s.shell=function(c) table.insert(s.sh,c); return true end
  return s
end
local s=mk({listing="[{\"name\":\"requests\",\"version\":\"2.31.0\"}]"})
g.plan({["pip"]={"requests"}},s)
assert(#s.ch==0,"installed spec re-churn")
local s2=mk({})
g.plan({["pip"]={"requests"}},s2)
assert(#s2.ch==1 and s2.ch[1].type=="+" and s2.ch[1].section=="pip","missing spec")
s2.ch[1].ap(nil,s2)
assert(s2.sh[1]=="pip install --break-system-packages requests","add cmd")
assert(s2.sh[#s2.sh]:match("^grep"),"declaration recorded")
print("pip add resolution OK")]] .. "'")
    -- generator: version pins — a pin satisfied by the installed version
    -- plans nothing, a drifted one re-applies, PEP 503 names normalize, and
    -- a bare name is satisfied by any version
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path\n" .. [[local g=require("pip")
local function mk(o) o=o or {}
  local s={ch={},sh={}}
  s.shell_output=function(c)
    if c=="command -v python3" or c=="command -v pip" then return "/usr/bin/x" end
    if c:match("^pip list") then return o.listing or "" end
    return ""
  end
  s.read_file=function() return o.declared or "" end
  s.change=function(t,sec,tgt,det,ap)
    local c={type=t,section=sec,target=tgt,detail=det,ap=ap}
    table.insert(s.ch,c); return c
  end
  s.shell=function(c) table.insert(s.sh,c); return true end
  return s
end
local L="[{\"name\":\"requests\",\"version\":\"2.31.0\"}]"
local s=mk({listing=L})
g.plan({["pip"]={"requests==2.31.0"}},s)
assert(#s.ch==0,"pinned version re-churn")
local s2=mk({listing=L})
g.plan({["pip"]={"requests==2.32.0"}},s2)
assert(#s2.ch==1 and s2.ch[1].type=="+","drifted pin")
local s3=mk({listing="[{\"name\":\"Pillow\",\"version\":\"10.4.0\"}]"})
g.plan({["pip"]={"pillow==10.4.0"}},s3)
assert(#s3.ch==0,"PEP 503 name normalization")
local s4=mk({listing=L})
g.plan({["pip"]={"requests"}},s4)
assert(#s4.ch==0,"bare name satisfied by any version")
print("pip version resolution OK")]] .. "'")
    -- generator: removals only touch recorded specs, target is the bare
    -- name, a pin upgrade never uninstalls what the add just pinned, and an
    -- already-gone package is un-recorded without running pip
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path\n" .. [[local g=require("pip")
local function mk(o) o=o or {}
  local s={ch={},sh={}}
  s.shell_output=function(c)
    if c=="command -v python3" or c=="command -v pip" then return "/usr/bin/x" end
    if c:match("^pip list") then return o.listing or "" end
    return ""
  end
  s.read_file=function(path)
    if path=="/var/db/declared-pip" then return o.declared or "" end
    return nil
  end
  s.change=function(t,sec,tgt,det,ap)
    local c={type=t,section=sec,target=tgt,detail=det,ap=ap}
    table.insert(s.ch,c); return c
  end
  s.shell=function(c) table.insert(s.sh,c); return true end
  return s
end
local L="[{\"name\":\"requests\",\"version\":\"2.31.0\"}]"
local s=mk({listing=L,declared="requests==2.31.0\n"})
g.plan({["pip"]={}},s)
assert(#s.ch==1 and s.ch[1].type=="-","removal")
s.ch[1].ap(nil,s)
assert(s.sh[1]=="pip uninstall -y --break-system-packages requests","removal targets bare name")
local s2=mk({listing=L,declared="requests==2.31.0\n"})
g.plan({["pip"]={"requests==2.32.0"}},s2)
assert(#s2.ch==2,"upgrade plans add + record-drop")
s2.ch[1].ap(nil,s2)
local installed=false
for i=1,#s2.sh do if s2.sh[i]=="pip install --break-system-packages requests==2.32.0" then installed=true end end
assert(installed,"upgrade installs the new pin")
local n0=#s2.sh
s2.ch[2].ap(nil,s2)
local uninstalled=false
for i=n0+1,#s2.sh do if s2.sh[i]:match("pip uninstall") then uninstalled=true end end
assert(not uninstalled,"upgrade must not uninstall the pinned package")
local s3=mk({listing="",declared="requests==2.31.0\n"})
g.plan({["pip"]={}},s3)
assert(#s3.ch==1,"record must still be dropped")
s3.ch[1].ap(nil,s3)
assert(#s3.sh==1 and s3.sh[1]:match("^grep")~=nil,"gone package must not run pip")
print("pip removal resolution OK")]] .. "'")
    -- generator: gates and validation — python3 missing, pip missing,
    -- malformed specs and conflicting version pins all plan conservatively
    p:run("lua -e 'package.path=\"" .. r .. "/usr/lib/nacelle/generators/?.lua;\" .. package.path\n" .. [[local g=require("pip")
local function mk(o) o=o or {}
  local s={ch={},sh={},py=o.py~=false,pipok=o.pipok~=false}
  s.shell_output=function(c)
    if c=="command -v python3" then return s.py and "/usr/bin/python3" or "" end
    if c=="command -v pip" then return s.pipok and "/usr/bin/pip" or "" end
    if c:match("^pip list") then return o.listing or "" end
    return ""
  end
  s.read_file=function() return o.declared or "" end
  s.change=function(t,sec,tgt,det,ap)
    local c={type=t,section=sec,target=tgt,detail=det,ap=ap}
    table.insert(s.ch,c); return c
  end
  s.shell=function(c) table.insert(s.sh,c); return true end
  return s
end
local s=mk({py=false})
g.plan({["pip"]={"requests"}},s)
assert(#s.ch==0,"no python3")
local s2=mk({pipok=false})
g.plan({["pip"]={"requests"}},s2)
assert(#s2.ch==0,"no pip")
local s3=mk({})
g.plan({["pip"]={"requests; rm -rf /"}},s3)
assert(#s3.ch==0,"malformed spec")
local s4=mk({})
g.plan({["pip"]={"requests==1.0","requests==2.0"}},s4)
assert(#s4.ch==1 and s4.ch[1].target=="requests==1.0","conflicting pins")
local s5=mk({})
g.plan({["pip"]={"requests","requests"}},s5)
assert(#s5.ch==1,"duplicate spec")
print("pip gates OK")]] .. "'")
  end,
}
