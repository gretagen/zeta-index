return {
  name    = "figlet",
  version = "2.2.5",
  summary = "ASCII art banner generator (FIGlet)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/figlet/figlet-2.2.5.tar.gz",
  sha256  = "cbd62992f3704260bae65aa2696f3405d34d9702fd8808798409e14711e9b92f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/figlet && test -f " .. p.install_root .. "/usr/share/figlet/big.flf && test -f " .. p.install_root .. "/usr/share/figlet/standard.flf && test \"$(FIGLET_FONTDIR=" .. p.install_root .. "/usr/share/figlet " .. p.install_root .. "/usr/bin/figlet -f big hi | wc -l)\" -ge 5")
  end,
}
