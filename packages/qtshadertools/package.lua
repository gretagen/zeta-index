return {
  name    = "qtshadertools",
  version = "6.8.2",
  summary = "Qt 6 ShaderTools libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtshadertools/qtshadertools-6.8.2.tar.gz",
  sha256  = "61aa4ab2db13605626a1100eec48b791731e68947773fe01e9b3d1fbbe6e92bb",
  deps    = { "glibc", "qtbase", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6ShaderTools.so.6")
  end,
}
