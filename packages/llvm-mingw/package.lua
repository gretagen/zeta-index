return {
  name    = "llvm-mingw",
  version = "20260616",
  summary = "LLVM/Clang/LLD based MinGW-w64 cross toolchain",
  url     = "https://github.com/mstorsjo/llvm-mingw/releases/download/20260616/llvm-mingw-20260616-ucrt-ubuntu-22.04-x86_64.tar.xz",
  sha256  = "534b92e067b22a6b4441f48ae9240a3341b17825d04d577eab0cf85c44b4deda",
  arch    = "x86_64",
  deps    = { "glibc", "libz", "zstd" },
  install = function(p)
    p:install(".", "/opt/llvm-mingw")
    p:run("mkdir -p " .. p.install_root .. "/usr/bin")
    p:run("bash -c 'for tool in " .. p.install_root .. "/opt/llvm-mingw/bin/i686-w64-mingw32-* " .. p.install_root .. "/opt/llvm-mingw/bin/x86_64-w64-mingw32-*; do ln -s /opt/llvm-mingw/bin/$(basename \"$tool\") " .. p.install_root .. "/usr/bin/$(basename \"$tool\"); done'")
  end,
  test    = function(p)
    p:run(p.install_root .. "/opt/llvm-mingw/bin/i686-w64-mingw32-clang --version")
    p:run(p.install_root .. "/opt/llvm-mingw/bin/x86_64-w64-mingw32-clang --version")
  end,
}
