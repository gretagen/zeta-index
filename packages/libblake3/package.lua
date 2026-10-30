return {
  name    = "libblake3",
  version = "1.8.7-1-x86_64",
  summary = "the official C implementation of BLAKE3",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libblake3/libblake3-1.8.7-1-x86_64.pkg.tar.zst",
  sha256  = "1092d411d22cdd2f2c6b611f73086e29732cb441abbe1a0235ebff422ab37a3b",
  deps    = { "glibc", "libgcc", "onetbb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libblake3.so.1.8.7")
  end,
}
