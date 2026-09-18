return {
  name    = "compiler-rt21",
  version = "21.1.8",
  summary = "Compiler runtime libraries for clang 21 (compiler-rt builtins)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/compiler-rt21/compiler-rt21-21.1.8.tar.gz",
  sha256  = "fbb548059a72ce410d06c2ff1ad1eda1a0ef9b25e4614d586a7fae28d6cbe391",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/llvm21/lib/clang/21")
  end,
}
