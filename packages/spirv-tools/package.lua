return {
  name    = "spirv-tools",
  version = "2026.4.1-2",
  summary = "Khronos SPIR-V tools (validator, linker, optimizer)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/spirv-tools/spirv-tools-2026.4.1-2.tar.gz",
  sha256  = "181cbde0a3a29b2e2ec9647089022552a8d550701c2cb25569634c3cba4670d7",
  deps    = { "glibc", "libstdc++", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/spirv-tools/libspirv.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/SPIRV-Tools.pc && test -f " .. p.install_root .. "/usr/lib/libSPIRV-Tools.a && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists SPIRV-Tools")
  end,
}
