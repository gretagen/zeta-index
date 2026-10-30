return {
  name    = "libedataserverui4",
  version = "3.62.1-1-x86_64",
  summary = "unified contacts, tasks and calendar backend - GTK 4 UI library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libedataserverui4/libedataserverui4-3.62.1-1-x86_64.pkg.tar.zst",
  sha256  = "74bacc6e66a49121de58883c942a8b611976bc9ae11d8716d8d7d886632233f0",
  deps    = { "evolution-data-server", "glib", "glibc", "gtk4", "libical", "libsoup3", "nspr", "nss", "pango", "webkitgtk-6.0" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libedataserverui4-1.0.so.0.0.0")
  end,
}
