return {
  name    = "llvm",
  version = "22.1.8-2",
  summary = "LLVM compiler infrastructure (development files)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/llvm/llvm-22.1.8-2.tar.gz",
  sha256  = "098330227a2cd5b982b59604610d975f0e87f5c5fbacf757bb62008165e4dab5",
  deps    = { "glibc", "llvm-libs", "libstdc++", "gcc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/llvm-config && test -x " .. p.install_root .. "/usr/bin/llvm-config-real && " .. p.install_root .. "/usr/bin/llvm-config --version | grep -q 22.1.8 && " .. p.install_root .. "/usr/bin/llvm-config --shared-mode | grep -q static")
  end,
}
