return {
  name    = "lld21",
  version = "21.1.8",
  summary = "LLVM 21 linker (lld libraries and tooling)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lld21/lld21-21.1.8.tar.gz",
  sha256  = "8f356e2216ebdc97868f288bbece9e6644762c0417b8dbe7b0b0f2f8fa489143",
  deps    = { "glibc", "llvm21-libs", "gcc", "libz", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblldELF.so.21.1")
  end,
}
