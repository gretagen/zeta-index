return {
  name    = "bind",
  version = "9.20.30-1-x86_64",
  summary = "DNS server and client tools (dig, host, nslookup) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/bind/bind-9.20.30-1-x86_64.pkg.tar.zst",
  sha256  = "923eba2713282e5a8323479e7cf1e1094637c1c2d51d926f7d517dd0ed3fcbca",
  deps    = { "bash", "dnssec-anchors", "e2fsprogs", "glibc", "icu", "jemalloc", "json-c", "krb5", "libcap", "libedit", "libidn2", "libmaxminddb", "nghttp2", "libnsl", "liburcu", "libuv", "libxml2", "lmdb", "openssl", "readline", "xz-utils", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dig && test -x " .. p.install_root .. "/usr/bin/host && test -x " .. p.install_root .. "/usr/bin/nslookup")
  end,
}
