return {
  name    = "speech-dispatcher",
  version = "0.12.1-3-x86_64",
  summary = "high-level device independent layer for speech synthesis interface",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/speech-dispatcher/speech-dispatcher-0.12.1-3-x86_64.pkg.tar.zst",
  sha256  = "6dfe836ff55080ea3f4a87deb3727605bcd042a06c204fb084f7b570bf77a8f8",
  deps    = { "libspeechd", "python-pyxdg", "dotconf", "libpulse", "libao" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/speech-dispatcher")
  end,
}
