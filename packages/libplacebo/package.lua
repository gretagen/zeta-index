return {
  name    = "libplacebo",
  version = "7.360.1",
  summary = "GPU-accelerated video rendering",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libplacebo/libplacebo-7.360.1-6-x86_64.pkg.tar.zst",
  sha256  = "3aab1e224aa5d162fbb048f6924889d58c6f5ae7870db2947944c064a5a28ce4",
  deps    = { "glibc", "vulkan-icd-loader", "lcms2", "glslang", "shaderc", "libunwind", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
