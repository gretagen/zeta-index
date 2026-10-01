return {
  name    = "nix-declarative-helper",
  version = "1.1",
  summary = "Declare nixpkgs packages from definition.lua (extra generator for declaration)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nix-declarative-helper/nix-declarative-helper-1.1.tar.gz",
  sha256  = "b10b4eaa20f16f8c42f4ac1716216d3cd0f9ce5e5bdba5b4b0f1ef4ae4e36a5b",
  deps    = { "declaration" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/nix-declarative-helper")
    p:run("test -f " .. r .. "/usr/lib/declaration/generators/nixpkgs.lua")
    p:run("grep -q /nix/var/nix/profiles/default " .. r .. "/usr/lib/declaration/generators/nixpkgs.lua")
    p:run(r .. "/usr/bin/nix-declarative-helper --help >/dev/null")
    p:run("printf '%s\\n' 'local config = {}' 'local defaults = {' '}' 'local schema = {' '}' 'return config' > \"$TMPDIR/hc.lua\"")
    p:run("HELPER_CFG=\"$TMPDIR/hc.lua\" " .. r .. "/usr/bin/nix-declarative-helper --genconfig")
    p:run("grep -q nixpkgs \"$TMPDIR/hc.lua\" && lua -e 'assert(loadfile(os.getenv(\"TMPDIR\")..\"/hc.lua\"))'")
    p:run("HELPER_CFG=\"$TMPDIR/hc.lua\" " .. r .. "/usr/bin/nix-declarative-helper --genconfig | grep -q 'already prepared'")
    p:run(r .. "/usr/bin/nix-declarative-helper --verifynix || :")
  end,
}
