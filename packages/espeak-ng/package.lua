return {
  name    = "espeak-ng",
  version = "1.52.0",
  summary = "Speech synthesizer for over 100 languages (espeak-ng with espeak compat CLI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/espeak-ng/espeak-ng-1.52.0.tar.gz",
  sha256  = "2665e0edbf19325e12e4ba0939cfd462fe6f5a24aed2a97ef39f15e9eb1d90e7",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++", "pcaudiolib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/espeak-ng && test -x " .. p.install_root .. "/usr/bin/espeak && cd " .. p.install_root .. "/usr/bin && ./espeak-ng --version | grep -q 1.52")
  end,
}
