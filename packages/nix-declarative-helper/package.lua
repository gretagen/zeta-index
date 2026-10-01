return {
  name    = "nix-declarative-helper",
  version = "1.0",
  summary = "Declare nixpkgs packages from definition.lua (extra generator for declaration)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nix-declarative-helper/nix-declarative-helper-1.0.tar.gz",
  sha256  = "5f1f60354a84777a0a9337172b1f0fda2ff2612bdc9d8f2f88c86cccbf7ebdac",
  deps    = { "declaration" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/usr/bin/nix-declarative-helper")
    p:run("test -f " .. r .. "/usr/lib/declaration/generators/nixpkgs.lua")
    p:run(r .. "/usr/bin/nix-declarative-helper --help >/dev/null")
    p:run("printf '%s\\n' 'local config = {}' 'local defaults = {' '}' 'local schema = {' '}' 'return config' > \"$TMPDIR/hc.lua\"")
    p:run("HELPER_CFG=\"$TMPDIR/hc.lua\" " .. r .. "/usr/bin/nix-declarative-helper --genconfig")
    p:run("grep -q nixpkgs \"$TMPDIR/hc.lua\" && lua -e 'assert(loadfile(os.getenv(\"TMPDIR\")..\"/hc.lua\"))'")
    p:run("HELPER_CFG=\"$TMPDIR/hc.lua\" " .. r .. "/usr/bin/nix-declarative-helper --genconfig | grep -q 'already prepared'")
    p:run(r .. "/usr/bin/nix-declarative-helper --verifynix || :")
  end,
}
