return {
  name    = "libdconf",
  version = "0.40.0",
  summary = "GSettings configuration backend",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libdconf/libdconf-0.40.0.tar.gz",
  sha256  = "5458812b0dcc3d539a2d67d63b9f6c07d840f5f9c1877580a3c9e77489067799",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libdconf.so.1")
  end,
}
