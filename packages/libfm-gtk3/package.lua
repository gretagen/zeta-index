return {
  name    = "libfm-gtk3",
  version = "1.4.1",
  summary = "GTK3 bindings for libfm",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libfm-gtk3/libfm-gtk3-1.4.1.tar.gz",
  sha256  = "635e205bbd42e41c1b17f724d3ef11f619a321a145b3a950fd01b11fe7166a1d",
  deps    = { "glibc", "libfm", "gtk3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libfm-gtk3.so.4")
  end,
}
