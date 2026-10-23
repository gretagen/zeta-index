return {
  name    = "kquickcharts",
  version = "6.13.0",
  summary = "KDE: A QtQuick plugin providing high-performance charts.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kquickcharts/kquickcharts-6.13.0.tar.gz",
  sha256  = "8118d20a1fad914c5eac328aba12141aa6a72ecdf4e6e6658ef3bcf1af9444ff",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtshadertools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
