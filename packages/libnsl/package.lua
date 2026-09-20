return {
  name    = "libnsl",
  version = "2.0.1",
  summary = "Public client interface library for NIS(YP)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libnsl/libnsl.pkg.tar.zst",
  sha256  = "4ba7b85b42fbda5a1f07e15b8f91c60faa4c5f9168cc27d49fcd20e3a3be8bd8",
  deps    = { "libtirpc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
