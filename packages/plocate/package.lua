return {
  name    = "plocate",
  version = "1.1.25-1-x86_64",
  summary = "Much faster locate (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/plocate/plocate-1.1.25-1-x86_64.pkg.tar.zst",
  sha256  = "d0082c96e3e9632651d0c7deb1dab6496715223bfe9fbdded2cf94f3feae03bf",
  deps    = { "liburing", "zstd", "libstdc++", "libgcc", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/plocate")
  end,
}
