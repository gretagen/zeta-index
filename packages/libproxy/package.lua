return {
  name    = "libproxy",
  version = "0.5.0",
  summary = "Proxy configuration lookup library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libproxy/libproxy-0.5.0.tar.gz",
  sha256  = "0448b7aeeb6f1da30934b491c45af851af00308baa50e69ab2c51e9d49fc0a9b",
  deps    = { "glibc", "gcc", "glib", "curl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/libproxy-1.0.pc -o -f " .. p.install_root .. "/usr/lib64/pkgconfig/libproxy-1.0.pc")
  end,
}
