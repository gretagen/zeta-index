return {
  name    = "xorg-xrdb",
  version = "1.2.3-1-x86_64",
  summary = "x server resource database utility",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xorg-xrdb/xorg-xrdb-1.2.3-1-x86_64.pkg.tar.zst",
  sha256  = "12b984dc4b3bbf7539ed040ddfbfaba4937daf064180b09ec29292aaa6912678",
  deps    = { "libX11", "libXmu", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xrdb")
  end,
}
