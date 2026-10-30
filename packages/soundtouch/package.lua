return {
  name    = "soundtouch",
  version = "2.4.1-1-x86_64",
  summary = "an audio processing library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/soundtouch/soundtouch-2.4.1-1-x86_64.pkg.tar.zst",
  sha256  = "72c18213aadb17f2e48de144f70a1eefa7f88d1761d348f9cdfa59c52d2d46f4",
  deps    = { "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libSoundTouch.so.2.4.1")
  end,
}
