return {
  name    = "tomlplusplus",
  version = "3.5.1",
  summary = "Header-only TOML config file parser for C++17",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tomlplusplus/tomlplusplus-3.5.1.tar.gz",
  sha256  = "1997fb31131fb9e7c47264d52e52ce69ae55c81ed9c578a6ed2c1f60b9f3c95d",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtomlplusplus.so.3 && test -f " .. p.install_root .. "/usr/include/toml++/toml.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/tomlplusplus.pc")
  end,
}
