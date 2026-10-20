return {
  name    = "nlohmann-json",
  version = "3.12.0-2",
  summary = "JSON for Modern C++ (nlohmann/json single-header library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nlohmann-json/nlohmann-json-3.12.0-2.tar.gz",
  sha256  = "2737ecaab243b07f52dd576a887ad12385e25570624689bc80a965238f40096b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/nlohmann/json.hpp && test -f " .. p.install_root .. "/usr/include/nlohmann/detail/abi_macros.hpp && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists --print-errors nlohmann_json")
  end,
}
