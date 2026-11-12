return {
  name    = "font-util",
  version = "1.4.2",
  summary = "X.Org font package creation utilities (fontutil.pc)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/font-util/font-util-1.4.2.tar.gz",
  sha256  = "90e139cb73faffb36b955ec29146e531b20c9439849242ed18c9c7b4d1f50ba8",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bdftruncate && test -x " .. p.install_root .. "/usr/bin/ucs2any && test -f " .. p.install_root .. "/usr/lib/pkgconfig/fontutil.pc && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists fontutil")
  end,
}
