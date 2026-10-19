return {
  name    = "house-handlers",
  version = "1.3.2",
  summary = "Haliade system home/dotfile configuration handlers (house-sync)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/house-handlers/house-handlers-1.3.2.tar.gz",
  sha256  = "6c759cbbaa4987aefc0cb7d1d0a09c67663c304253da1064d62400531c5efe1b",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/house-sync && test -f " .. p.install_root .. "/usr/lib/house-handlers/house_sync.lua && test -d " .. p.install_root .. "/usr/lib/house-handlers/house_generators")
  end,
}
