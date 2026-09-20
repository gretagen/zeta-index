return {
  name    = "zeromq",
  version = "4.3.5",
  summary = "High-performance messaging library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/zeromq/zeromq-4.3.5-3-x86_64.pkg.tar.zst",
  sha256  = "e3ec5be13978db5ba53c86a2416fac800bc14da8d6c6c3325afd928ebf79d27b",
  deps    = { "glibc", "gnutls", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
