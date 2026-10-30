return {
  name    = "neon",
  version = "0.37.1-1-x86_64",
  summary = "hTTP/1.1 and WebDAV client library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/neon/neon-0.37.1-1-x86_64.pkg.tar.zst",
  sha256  = "06697825e959946c271f1177e6b2d2f8daaf811fb1e0817f537b23f969c1b5af",
  deps    = { "ca-certificates", "expat", "glibc", "krb5", "openssl", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libneon.so.27.10.1")
  end,
}
