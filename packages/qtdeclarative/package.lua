return {
  name    = "qtdeclarative",
  version = "6.8.2",
  summary = "Qt 6 declarative (QML) libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtdeclarative/qtdeclarative-6.8.2.tar.gz",
  sha256  = "21161182ddacfbaa22990909f5dee7f47c687e229004cebd4903efe26d1394a5",
  deps    = { "glibc", "qtbase", "qtshadertools", "qtsvg", "xkbcommon", "krb5", "keyutils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Qml.so.6 -a -e " .. p.install_root .. "/usr/lib/libQt6Quick.so.6")
  end,
}
