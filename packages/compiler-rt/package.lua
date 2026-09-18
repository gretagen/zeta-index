return {
  name    = "compiler-rt",
  version = "22.1.8",
  summary = "Compiler runtime libraries for clang 22 (compiler-rt builtins)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/compiler-rt/compiler-rt-22.1.8.tar.gz",
  sha256  = "3fd86ab902d7e75048b4e300d4768c120a11244137c7f7e4b9f60be25c7b2e06",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/clang/22")
  end,
}
