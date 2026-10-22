return {
  name    = "kirigami",
  version = "6.13.0",
  summary = "KDE: A QtQuick based components set",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kirigami/kirigami-6.13.0.tar.gz",
  sha256  = "48bb376f9d545d84e2ee787bb01109d23b6839a1b5a429d8d4816d4044ead3d1",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtsvg", "qtshadertools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
