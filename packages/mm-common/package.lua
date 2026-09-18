return {
  name    = "mm-common",
  version = "1.0.8",
  summary = "Common build infrastructure for Gtkmm projects",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mm-common/mm-common-1.0.8.tar.gz",
  sha256  = "62082c9a3bc0d8f6fb8d0583f2fc424d622f21e01b0a3f13fab2a3aac98fad58",
  deps    = { "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/aclocal/mm-common.m4")
  end,
}
