return {
  name    = "zeta-toolchain",
  version = "1.0.0",
  summary = "Zeta build toolchain (zeta-makepkg, zeta-cli)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zeta-toolchain/zeta-toolchain-1.0.0.tar.gz",
  sha256  = "4bf0ce8d7193c177498a6641de64fc64ec83706db28b92d64066e9e19f5dfa0f",
  deps    = { "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zeta-makepkg && test -x " .. p.install_root .. "/usr/bin/zeta-cli && test -f " .. p.install_root .. "/usr/lib/zeta-toolchain/packager.lua")
  end,
}
