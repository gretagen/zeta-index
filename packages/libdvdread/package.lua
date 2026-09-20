return {
  name    = "libdvdread",
  version = "7.1.1",
  summary = "DVD read library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libdvdread/libdvdread-7.1.1-1-x86_64.pkg.tar.zst",
  sha256  = "41d9fce076d8dc28d85cbad6327ef5997dc52c13494871e3c1a2bb0c01a4112a",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
