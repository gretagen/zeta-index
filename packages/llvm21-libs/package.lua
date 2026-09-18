return {
  name    = "llvm21-libs",
  version = "21.1.8",
  summary = "LLVM 21 runtime libraries (libLLVM-21.so)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/llvm21-libs/llvm21-libs-21.1.8.tar.gz",
  sha256  = "983a6f81af04a7dae07c38b74ac1822d3b8dcf22dddfab85317226f9152cc316",
  deps    = { "glibc", "gcc", "libz", "zstd", "libffi", "libedit", "libxml2", "icu", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libLLVM-21.so")
  end,
}
