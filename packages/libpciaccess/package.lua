return {
  name = "libpciaccess",
  version = "0.17",
  summary = "Generic PCI access library (X11)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libpciaccess/libpciaccess-0.17.tar.gz",
  sha256 = "00763e8e00072283e36f8562faa4c2effb9b91ceb5c3deac93c68ff0ae7345ab",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libpciaccess.so.0")
  end,
}
