return {
  name    = "apache",
  version = "2.4.69-1-x86_64",
  summary = "a high performance Unix-based HTTP server",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/apache/apache-2.4.69-1-x86_64.pkg.tar.zst",
  sha256  = "e2ee1933cfa1502a996caad6818c7b35184d2a9668d91538f3e2402ce8d597b4",
  deps    = { "libz", "apr-util", "pcre2", "nghttp2", "openssl", "libxcrypt" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/ab")
  end,
}
