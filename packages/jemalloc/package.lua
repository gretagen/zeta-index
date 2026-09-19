return {
  name    = "jemalloc",
  version = "5.4.0",
  summary = "General-purpose scalable concurrent malloc implementation (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/jemalloc/jemalloc-5.4.0-1-x86_64.pkg.tar.zst",
  sha256  = "59550a986c2597e1a8fc025d9e81496f88a1fab32a1f21725b125432e34ad374",
  deps    = { "glibc", "gcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libjemalloc.so.2")
  end,
}
