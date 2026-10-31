return {
  name    = "notmuch-runtime",
  version = "0.40-2-x86_64",
  summary = "Thread-based email indexer/search library (notmuch) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/notmuch-runtime/notmuch-runtime-0.40-2-x86_64.pkg.tar.zst",
  sha256  = "5d915bb81b6300f7d4e620bd9695e037f26ad229d406485feae45112b918a1bd",
  deps    = { "glibc", "libstdc++", "libgcc", "gmime3", "glib", "talloc", "xapian-core", "sfsexp" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnotmuch.so.5")
  end,
}
