return {
  name    = "libsass",
  version = "3.6.6",
  summary = "SASS to CSS compiler library (static)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libsass/libsass-3.6.6.tar.gz",
  sha256  = "3117ee2371b6f0a691569cc44e0c574196a1304df66a10a12b6541b2c2c8c3a2",
  deps    = { "glibc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libsass.a && test -f " .. p.install_root .. "/usr/include/sass.h && test -f " .. p.install_root .. "/usr/include/sass/base.h")
  end,
}
