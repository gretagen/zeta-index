return {
  name    = "spirv-tools",
  version = "2026.2.1",
  summary = "API for SPIR-V bytecode processing (libSPIRV-Tools)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/spirv-tools/spirv-tools-2026.2.1.tar.gz",
  sha256  = "433d589a6b1c58d1acb0b64d46457323860fdb9c0231b37b854f8ebc4ac1eca6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libSPIRV-Tools.so")
  end,
}
