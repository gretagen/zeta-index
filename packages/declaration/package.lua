return {
  name    = "declaration",
  version = "1.0.0",
  summary = "Haliade OS declarative system configuration (haliade-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/declaration/declaration-1.0.0.tar.gz",
  sha256  = "a5eb7e226e0b5dc7927c1593d1569a90e6b8884d7396f018f1c6c9ba93100d29",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/haliade-synchronize && test -f " .. p.install_root .. "/usr/lib/declaration/sync.lua && test -d " .. p.install_root .. "/usr/lib/declaration/generators")
  end,
}
