return {
  name    = "kglobalaccel",
  version = "6.13.0",
  summary = "KDE: KGlobalAccel",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kglobalaccel/kglobalaccel-6.13.0.tar.gz",
  sha256  = "997cee6b99d89c8ce3b7320396820d3af7af873967b8ffc73aabd4dc796f194f",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
