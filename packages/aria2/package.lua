return {
  name    = "aria2",
  version = "1.37.0-3-x86_64",
  summary = "Multi-protocol download utility (HTTP/FTP/BitTorrent) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/aria2/aria2-1.37.0-3-x86_64.pkg.tar.zst",
  sha256  = "fd887fd41933137da7260522d62198ab9f9a5f1cf7fbceeb9127f29c1e98aad3",
  deps    = { "glibc", "libgcc", "libstdc++", "libz", "libxml2", "sqlite", "gnutls", "nettle", "gmp", "libssh2", "c-ares" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/aria2c")
  end,
}
