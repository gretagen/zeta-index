return {
  name = "libigdgmm",
  version = "22.5.0",
  summary = "Intel Graphics Memory Management Library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libigdgmm/libigdgmm-22.5.0.tar.gz",
  sha256 = "b624070290aa8b2fdf6f15b6ba5654ceb20a049933c5a52513ef0eb3d87db5bb",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libigdgmm.so.12")
  end,
}
