return {
  name    = "nix-declarative-helper",
  version = "1.2",
  summary = "Declare nixpkgs packages from definition.lua (extra generator for declaration)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nix-declarative-helper/nix-declarative-helper-1.2.tar.gz",
  sha256  = "cf9df0811babb66d04b0fbb823d0274ea9205d11e33b42612a4e4d2caf1a6804",
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
  end,
}