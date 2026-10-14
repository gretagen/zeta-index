return {
  name    = "zeta-toolchain",
  version = "1.0.4",
  summary = "Zeta build toolchain (zeta-makepkg, zeta-cli)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta-toolchain/zeta-toolchain-1.0.4.tar.gz",
  sha256  = "fbf047b1264b42928f5c8cb64dcfac86cdb2eb7e287c2aaba514a35d22b0a262",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta-makepkg && test -x " .. p.install_root .. "/usr/bin/zeta-cli && test -f " .. p.install_root .. "/usr/lib/zeta-toolchain/packager.lua && test -f " .. p.install_root .. "/usr/lib/zeta-toolchain/closure.lua")
  end,
}
