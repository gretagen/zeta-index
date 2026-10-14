return {
  name    = "zeta-toolchain",
  version = "1.0.2",
  summary = "Zeta build toolchain (zeta-makepkg, zeta-cli)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta-toolchain/zeta-toolchain-1.0.2.tar.gz",
  sha256  = "0893e9909b551fe4567c1f5f4fa497a2ec4826f2ef12a34cd5f21632c4340485",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta-makepkg && test -x " .. p.install_root .. "/usr/bin/zeta-cli && test -f " .. p.install_root .. "/usr/lib/zeta-toolchain/packager.lua && test -f " .. p.install_root .. "/usr/lib/zeta-toolchain/closure.lua")
  end,
}
