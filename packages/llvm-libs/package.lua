return {
  name    = "llvm-libs",
  version = "22.1.8",
  summary = "LLVM runtime libraries (libLLVM-22.so)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/llvm-libs/llvm-libs-22.1.8.tar.gz",
  sha256  = "f3631245135265dd05a0c55de2d1c14fb969ff4fac2aaa4363c7bfe2b1d5f02b",
  deps    = { "glibc", "gcc", "libz", "zstd", "libffi", "libedit", "libxml2", "icu", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libLLVM-22.so")
  end,
}
