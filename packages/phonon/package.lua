return {
  name    = "phonon",
  version = "4.12.0",
  summary = "Phonon media abstraction framework (Qt6)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/phonon/phonon-4.12.0.tar.gz",
  sha256  = "818dca741237ce36bc5fc4ab55bd1eccc05fe6a622ed06d8fb129c82b53c13b2",
  deps    = { "glibc", "qtbase", "gcc", "qt5compat", "pulseaudio" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -name 'Phonon4Qt6Config.cmake' | grep -q .")
  end,
}
