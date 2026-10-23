return {
  name    = "kuserfeedback",
  version = "6.13.0",
  summary = "KDE: Framework for collecting user feedback for apps via telemetry and surveys",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kuserfeedback/kuserfeedback-6.13.0.tar.gz",
  sha256  = "97823eca3544df52a1d477bbd2fbc16abaa1086f51fe27ce244e636fb8ed1df2",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
