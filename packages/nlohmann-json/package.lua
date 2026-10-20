return {
  name    = "nlohmann-json",
  version = "3.12.0",
  summary = "JSON for Modern C++ (nlohmann/json single-header library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nlohmann-json/nlohmann-json-3.12.0.tar.gz",
  sha256  = "9bfb96d24066a4d0be7044bc482a2de82850ff3d7df80870aa1d50c9503f31b1",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/nlohmann/json.hpp && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists --print-errors nlohmann_json")
  end,
}
