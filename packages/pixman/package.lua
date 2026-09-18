return {
  name = "pixman",
  version = "0.46.4",
  summary = "Pixel manipulation library (low-level rendering primitives)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pixman/pixman-0.46.4.tar.gz",
  sha256 = "af48024a31f8468ebbcc8aea07d325a16a4e45d0f77e0b0e14631d2534b85ff0",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libpixman-1.so.0")
  end,
}
