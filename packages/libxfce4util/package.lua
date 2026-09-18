return {
  name    = "libxfce4util",
  version = "4.20.1",
  summary = "Basic utility library for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxfce4util/libxfce4util-4.20.1.tar.gz",
  sha256  = "ee7beef7429aff6a4c2d32c9e5c6ba3f46ffc72f1cc24364cfe7408e12e6a829",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxfce4util.so.7")
  end,
}
