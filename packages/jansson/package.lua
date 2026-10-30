return {
  name    = "jansson",
  version = "2.15.1-1-x86_64",
  summary = "Jansson JSON C library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/jansson/jansson-2.15.1-1-x86_64.pkg.tar.zst",
  sha256  = "ff1ff9da9ec0520b30cc4add6160ba5a171d9a478408863a2d99b61f5bb9866b",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libjansson.so.4")
  end,
}
