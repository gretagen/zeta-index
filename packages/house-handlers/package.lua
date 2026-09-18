return {
  name    = "house-handlers",
  version = "1.0.0",
  summary = "Haliade OS home/dotfile configuration handlers (house-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/house-handlers/house-handlers-1.0.0.tar.gz",
  sha256  = "3e0b854aed12bb1821d18171cc097872cd78f12533ff333541a2a1f3c8144839",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/house-synchronize && test -f " .. p.install_root .. "/usr/lib/house-handlers/house_sync.lua && test -d " .. p.install_root .. "/usr/lib/house-handlers/house_generators")
  end,
}
