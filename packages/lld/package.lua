return {
  name    = "lld",
  version = "22.1.8",
  summary = "LLVM 22 linker (lld libraries and tooling)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lld/lld-22.1.8.tar.gz",
  sha256  = "98883f3e754e9bbbb0f525da92ad04090a5880d302d92f7a92e08c4ef13a1607",
  deps    = { "glibc", "llvm-libs", "gcc", "libz", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblldELF.so.22.1")
  end,
}
