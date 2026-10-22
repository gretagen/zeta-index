return {
  name    = "qtshadertools",
  version = "6.8.2",
  summary = "Qt 6 ShaderTools libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtshadertools/qtshadertools-6.8.2.tar.gz",
  sha256  = "ad96cbdb8d4dae4dad5e0165b0752ba6d01481e66c7e82e971cf124ce219811e",
  deps    = { "glibc", "qtbase", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6ShaderTools.so.6")
  end,
}
