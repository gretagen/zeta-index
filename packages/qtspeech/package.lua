return {
  name    = "qtspeech",
  version = "6.8.2",
  summary = "Qt 6 text-to-speech module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtspeech/qtspeech-6.8.2.tar.gz",
  sha256  = "a0f34dfedca2937828f6fda221a0d11f509dbb0035b0debd158251ec582a1d08",
  deps    = { "glibc", "qtbase", "qtdeclarative", "qtmultimedia" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6TextToSpeech.so.6")
  end,
}
