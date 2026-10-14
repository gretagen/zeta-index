return {
  name    = "spirv-tools",
  version = "2026.4.1",
  summary = "Khronos SPIR-V tools (validator, linker, optimizer)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/spirv-tools/spirv-tools-2026.4.1.tar.gz",
  sha256  = "98adc2f6f7a16a43aa2b4cf59b66855d36396092453508db5b3adff0b2df6241",
  deps    = { "glibc", "libstdc++", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/spirv-tools/libspirv.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/SPIRV-Tools.pc && test -f " .. p.install_root .. "/usr/lib/libSPIRV-Tools.a && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists SPIRV-Tools")
  end,
}
