return {
  name    = "clang21",
  version = "21.1.8",
  summary = "C language family frontend for LLVM 21 (clang and libclang-cpp)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/clang21/clang21-21.1.8.tar.gz",
  sha256  = "37363b355f85dd8038b0fea847cb34f5630b6e229795fe7b5a8f437230390ea9",
  deps    = { "glibc", "llvm21-libs", "compiler-rt21", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libclang-cpp.so.21.1")
  end,
}
