return {
  name = "libxcvt",
  version = "0.1.3",
  summary = "Library for VESA CVT standard timing modelines",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxcvt/libxcvt-0.1.3.tar.gz",
  sha256 = "5db134fb6c5a121aef323dce851854f55009e6ebb731870247a79d1695016c7b",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libxcvt.so.0")
  end,
}
