return {
  name    = "libdbusmenu-lxqt",
  version = "0.2.0",
  summary = "LXQt dbusmenu library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libdbusmenu-lxqt/libdbusmenu-lxqt-0.2.0.tar.gz",
  sha256  = "5ca5d4896e46e8b15a96752cf02c8bdd6e7959d7b17bb91d5078d337f63e538c",
  deps    = { "glibc", "qtbase" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libdbusmenu-lxqt.so.0")
  end,
}
