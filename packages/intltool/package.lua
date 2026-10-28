return {
  name    = "intltool",
  version = "0.51.0",
  summary = "Universal gettext i18n tool converter (build glue)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/intltool/intltool-0.51.0.tar.gz",
  sha256  = "494c95a5a71b0c4d1f60f4d98daadf1a846a9cd342048dc370e435936ba65fb0",
  deps    = { "glibc", "perl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/intltoolize && test -x " .. p.install_root .. "/usr/bin/intltool-merge && test -f " .. p.install_root .. "/usr/share/aclocal/intltool.m4")
  end,
}
