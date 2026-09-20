return {
  name    = "libxtst",
  version = "1.2.5",
  summary = "library for XTEST & RECORD extensions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxtst/libxtst.pkg.tar.zst",
  sha256  = "7e036fc4ae02ec16d09efed08b111e33d4753aa959d12148461d653659a9f529",
  deps    = { "libxext", "libxi", "libx11", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
