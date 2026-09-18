return {
  name = "libxcb",
  version = "1.17.0",
  summary = "X C Binding library (X11 protocol client library)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxcb/libxcb-1.17.0.tar.gz",
  sha256 = "75322a9789f1f6f4b8d35a4d66542e676593170255e80e8e5fc69b62e540b9fa",
  deps = { "glibc", "libXau", "libXdmcp" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libxcb.so.1")
  end,
}
