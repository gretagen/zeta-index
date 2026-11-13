return {
  name    = "nlohmann-json",
  version = "3.12.0",
  summary = "nlohmann/json: JSON for Modern C++ (header-only)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nlohmann-json/nlohmann-json-3.12.0.tar.gz",
  sha256  = "6ea3d55ae32fe6408a45a67f04ae57307fbc8944d0f7a17e796b8b4f99ac1197",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/nlohmann/json.hpp && test -f " .. p.install_root .. "/usr/share/pkgconfig/nlohmann_json.pc && test -n \"$(find " .. p.install_root .. "/usr -name 'nlohmann_jsonConfig.cmake')\"")
  end,
}
