return {
  name    = "house-handlers",
  version = "1.3.1",
  summary = "Haliade system home/dotfile configuration handlers (house-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/house-handlers/house-handlers-1.3.1.tar.gz",
  sha256  = "3d9ce3345da84b6e9bd2482a476fd2dd66b8d823999c9b1016e8427c6537a70b",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/house-synchronize && test -f " .. p.install_root .. "/usr/lib/house-handlers/house_sync.lua && test -d " .. p.install_root .. "/usr/lib/house-handlers/house_generators")
  end,
}