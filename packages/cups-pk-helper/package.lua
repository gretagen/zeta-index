return {
  name    = "cups-pk-helper",
  version = "0.2.7-2-x86_64",
  summary = "a helper that makes system-config-printer use PolicyKit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cups-pk-helper/cups-pk-helper-0.2.7-2-x86_64.pkg.tar.zst",
  sha256  = "a9a0c5d1eece5acb14160e73463cc4c7b89d47f811b5b585f941fb51eb4735d7",
  deps    = { "polkit", "libcups", "glib", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/cups-pk-helper-mechanism")
  end,
}
