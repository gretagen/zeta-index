return {
  name    = "libmalcontent",
  version = "0.14.0-4-x86_64",
  summary = "parental control library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmalcontent/libmalcontent-0.14.0-4-x86_64.pkg.tar.zst",
  sha256  = "9c35fcdcade68ff32a0af35f5e80b3c72eb69926069ae0450a2006241109f23c",
  deps    = { "accountsservice", "glibc", "libgcc", "glib" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmalcontent-0.so.0.14.0")
  end,
}
