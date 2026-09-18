return {
  name = "xshmfence",
  version = "1.3.3",
  summary = "X11 shared memory fence library (synchronization primitives)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xshmfence/xshmfence-1.3.3.tar.gz",
  sha256 = "1d96cf96ff02975d7e5ccba023a8a605410c2ce46b52bd2de17219447813a5e5",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libxshmfence.so.1")
  end,
}
