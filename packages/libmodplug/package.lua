return {
  name    = "libmodplug",
  version = "0.8.9.0",
  summary = "Modplug library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libmodplug/libmodplug-0.8.9.0-7-x86_64.pkg.tar.zst",
  sha256  = "41a834ee39468b5ec96238cfae5e3be8f2b4d6ea26edfa4c838f2620fe30fa80",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
