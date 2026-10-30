return {
  name    = "libcacard",
  version = "2.8.1-1-x86_64",
  summary = "cAC (Common Access Card) library that provides emulation of smart cards to a virtual card",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcacard/libcacard-2.8.1-1-x86_64.pkg.tar.zst",
  sha256  = "a9c6d49c62ceabecaf0c11c27515d0a1222186a1b033e9d7c2b03cefd635484d",
  deps    = { "glib", "glibc", "nspr", "nss", "pcsclite" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcacard.so.0.0.0")
  end,
}
