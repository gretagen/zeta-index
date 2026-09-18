return {
  name    = "polkit",
  version = "127",
  summary = "Authorization framework for privileged actions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/polkit/polkit-127.tar.gz",
  sha256  = "527036b6c6bbe58874e3b93d8a62344332fdb25d00de939ff6aaf4264e3fb8d0",
  deps    = { "glibc", "glib", "expat", "duktape", "gobject-introspection", "pam", "elogind" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pkexec && test -x " .. p.install_root .. "/usr/lib/polkit-1/polkitd")
  end,
}
