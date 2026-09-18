return {
  name = "libfontenc",
  version = "1.1.9",
  summary = "X11 font encoding library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libfontenc/libfontenc-1.1.9.tar.gz",
  sha256 = "5685d811c366e9452a387d2e29271cc6664cbf14d296af38d9b4473b4897acbc",
  deps = { "glibc", "libz" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libfontenc.so.1")
  end,
}
