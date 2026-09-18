return {
  name    = "qtshadertools",
  version = "6.8.2",
  summary = "Qt6 shader tools module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtshadertools/qtshadertools-6.8.2.tar.gz",
  sha256  = "de69f618d6eb72287d4113b2017397db3ad947fabe7c0c2ad0fed1f1b3bbf608",
  deps    = { "glibc", "qtbase", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libQt6ShaderTools.so.6")
  end,
}
