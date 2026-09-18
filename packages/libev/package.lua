return {
  name    = "libev",
  version = "4.33",
  summary = "High-performance event loop library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libev/libev-4.33.tar.gz",
  sha256  = "e163458e15974e79f06d8d476d96bd678e417c6652743ea5e3f9d10d1d781afa",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libev.so.4")
  end,
}
