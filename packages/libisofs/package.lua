return {
  name    = "libisofs",
  version = "1.5.8.2",
  summary = "Library to pack up files into an ISO 9660 disk image",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libisofs/libisofs-1.5.8.2.tar.gz",
  sha256  = "7f5c72833cb92fdd73f3647b4965437c89edd45ef62ca0054e89bec9208bdf92",
  deps    = { "glibc", "acl", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libisofs.so.6 && ldd " .. p.install_root .. "/usr/lib/libisofs.so.6 | grep -q libacl")
  end,
}
