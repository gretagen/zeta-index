return {
  name    = "house-handlers",
  version = "1.3.0",
  summary = "Haliade OS home/dotfile configuration handlers (house-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/house-handlers/house-handlers-1.3.0.tar.gz",
  sha256  = "3cb7811da15a94c95159b9a161d4e3c6978357b97f9629afe81a17c40f446f9c",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/house-synchronize && test -f " .. p.install_root .. "/usr/lib/house-handlers/house_sync.lua && test -d " .. p.install_root .. "/usr/lib/house-handlers/house_generators")
  end,
}