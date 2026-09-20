return {
  name    = "shaderc",
  version = "2026.3",
  summary = "Collection of tools, libraries and tests for shader compilation",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/shaderc/shaderc.pkg.tar.zst",
  sha256  = "4b8c63f7e5074aa3551507d38da77584d017fac8085d6d057af0e08cc0ca1b1b",
  deps    = { "glslang", "libgcc", "libstdc++", "spirv-tools", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
