return {
  name    = "openucx",
  version = "1.20.1-3-x86_64",
  summary = "Optimized communication layer for MPI (OpenUCX) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/openucx/openucx-1.20.1-3-x86_64.pkg.tar.zst",
  sha256  = "7b5e8327ff7b8e705bbfb6218ae5eb0e3003ea0dd7146e91fefa4528cd70b849",
  deps    = { "binutils", "glibc", "libgcc", "libgomp", "libstdc++", "libz", "zstd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libucp.so.0")
  end,
}
