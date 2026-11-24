return {
  name    = "gcr-3",
  version = "3.41.2",
  summary = "GCR 3-series: PKCS#11 certificate/key/display objects",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gcr-3/gcr-3-3.41.2.tar.gz",
  sha256  = "8d33428b50b6645283ed5a4948690f112fc48b8ebf42dbe399895197d70b5db7",
  deps    = { "glibc", "glib", "libgcrypt", "p11-kit", "gtk3", "libsecret" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/gck-1.pc && test -f " .. p.install_root .. "/usr/lib/pkgconfig/gcr-base-3.pc && test -d " .. p.install_root .. "/usr/include/gck-1 && ls " .. p.install_root .. "/usr/lib/libgck-1.so* | grep -q libgck-1 && ls " .. p.install_root .. "/usr/lib/girepository-1.0/*.typelib | grep -q Gck")
  end,
}
