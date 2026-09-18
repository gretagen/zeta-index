return {
  name    = "tomlplusplus",
  version = "3.4.0",
  summary = "Header-only TOML config file parser for C++17",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tomlplusplus/tomlplusplus-3.4.0.tar.gz",
  sha256  = "ba8f0e940a5d144212a626f7b82c12d01a44d79f8de6ac534d350309f842ad27",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtomlplusplus.so.3")
  end,
}
