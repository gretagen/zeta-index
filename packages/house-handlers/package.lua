return {
  name    = "house-handlers",
  version = "1.1.0",
  summary = "Haliade OS home/dotfile configuration handlers (house-synchronize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/house-handlers/house-handlers-1.1.0.tar.gz",
  sha256  = "0c6cfca69de0c890564f4751856ab7e8a4981b0646b73ccf7034c2cb7d10436d",
  deps    = { "lua", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/house-synchronize && test -f " .. p.install_root .. "/usr/lib/house-handlers/house_sync.lua && test -d " .. p.install_root .. "/usr/lib/house-handlers/house_generators")
  end,
}
