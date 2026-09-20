return {
  name    = "lib32-spirv-tools",
  version = "1:1.4.357.0",
  summary = "API and commands for processing SPIR-V modules (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-spirv-tools/lib32-spirv-tools.pkg.tar.zst",
  sha256  = "b4d8bf66991caa2a2de8e7216c683665a8d3959353a783d697af494a38e136f3",
  deps    = { "lib32-gcc-libs", "lib32-glibc", "spirv-tools", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
