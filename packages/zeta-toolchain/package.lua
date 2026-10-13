return {
  name    = "zeta-toolchain",
  version = "1.0.1",
  summary = "Zeta build toolchain (zeta-makepkg, zeta-cli)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta-toolchain/zeta-toolchain-1.0.1.tar.gz",
  sha256  = "aeb2c9836f11e87fb985f36985bafc86fa4e67adad4b8bf5d73e39df0effb791",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta-makepkg && test -x " .. p.install_root .. "/usr/bin/zeta-cli && test -f " .. p.install_root .. "/usr/lib/zeta-toolchain/packager.lua && test -f " .. p.install_root .. "/usr/lib/zeta-toolchain/closure.lua")
  end,
}
