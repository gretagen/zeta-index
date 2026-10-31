return {
  name    = "gmime3",
  version = "3.2.15-2-x86_64",
  summary = "MIME message parser library (GMime 3) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gmime3/gmime3-3.2.15-2-x86_64.pkg.tar.zst",
  sha256  = "b5c0517094f9edbb4ff8a47c39e8cefb9f730cd6cb7c87b3bc67e9dacee79e8e",
  deps    = { "glib", "glibc", "gpgme", "libidn2", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgmime-3.0.so.0")
  end,
}
