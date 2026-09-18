return {
  name    = "libepoxy",
  version = "1.5.10",
  summary = "Thin wrapper around modern GL/EGL dispatch",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libepoxy/libepoxy-1.5.10.tar.gz",
  sha256  = "60b8ed16f08a20e8eabf408dfb569fcee854503ce6922623de250f5d1f43baa6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libepoxy.so.0")
  end,
}
