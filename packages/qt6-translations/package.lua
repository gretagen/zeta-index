return {
  name    = "qt6-translations",
  version = "6.12.0-1-any",
  summary = "a cross-platform application and UI framework (Translations)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/qt6-translations/qt6-translations-6.12.0-1-any.pkg.tar.zst",
  sha256  = "125c56e90bd77aac7bd03e2bbfeabd42025e1e110b8b58829336fe6758e0a7c5",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/qt6/sbom/qttranslations-6.12.0.spdx")
  end,
}
