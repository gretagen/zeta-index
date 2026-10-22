return {
  name    = "qtmultimedia",
  version = "6.8.2",
  summary = "Qt 6 multimedia (audio/video) module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtmultimedia/qtmultimedia-6.8.2.tar.gz",
  sha256  = "0c1a89611ec76492c5a5fd41da6831b71303249311e08fa489c7712121083085",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "ffmpeg", "pulseaudio" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Multimedia.so.6 -o -e " .. p.install_root .. "/usr/lib64/libQt6Multimedia.so.6")
  end,
}
