return {
  name    = "lib32-llvm-libs",
  version = "1:22.1.8",
  summary = "LLVM runtime libraries (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-llvm-libs/lib32-llvm-libs.pkg.tar.zst",
  sha256  = "51d0c042294d892166b0bb0518a7c66dd6106b3b57ab11a8e9861f359cd5d011",
  deps    = { "lib32-gcc-libs", "lib32-glibc", "lib32-libffi", "lib32-libxml2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
