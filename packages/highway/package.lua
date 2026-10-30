return {
  name    = "highway",
  version = "1.4.0-1-x86_64",
  summary = "a C++ library that provides portable SIMD/vector intrinsics",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/highway/highway-1.4.0-1-x86_64.pkg.tar.zst",
  sha256  = "1695affe5d6174380504a42b0808b1ca638e95b265fa15bc80e6d6e9875ba993",
  deps    = { "glibc", "gtest", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libhwy.so.1.4.0")
  end,
}
