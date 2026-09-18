return {
  name    = "zig",
  version = "0.16.0",
  summary = "Zig compiler and toolchain (LLVM 21 backend, all features)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zig/zig-0.16.0.tar.gz",
  sha256  = "732ed7e1ad553784156946ae14ff5d005e5c850180679910a1b9db6c13d05008",
  deps    = { "glibc", "clang21", "lld21", "llvm21-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zig")
  end,
}
