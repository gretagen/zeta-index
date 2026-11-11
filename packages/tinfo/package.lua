return {
  name    = "tinfo",
  version = "6.6",
  summary = "pkg-config module for tinfo (gap-filler for wide-char ncurses)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tinfo/tinfo-6.6.tar.gz",
  sha256  = "215711df26b5594fdd7ad5e598c4e92da0675f7dfb27f83a6cad4402e4fd7ded",
  deps    = { "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/tinfo.pc && grep -q 'Version: 6.6' " .. p.install_root .. "/usr/lib/pkgconfig/tinfo.pc && grep -q -- '-ltinfow' " .. p.install_root .. "/usr/lib/pkgconfig/tinfo.pc")
  end,
}
