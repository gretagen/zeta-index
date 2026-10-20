return {
  name    = "tomlplusplus",
  version = "3.4.0-2",
  summary = "Header-only TOML config file parser for C++17",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tomlplusplus/tomlplusplus-3.4.0-2.tar.gz",
  sha256  = "37c562a51fbb71b1f999ff30479eb931896e6d296288308e8a247c16d9435154",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtomlplusplus.so.3 && test -f " .. p.install_root .. "/usr/include/toml++/toml.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/tomlplusplus.pc")
  end,
}
