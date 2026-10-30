return {
  name    = "libgme",
  version = "0.6.5-1-x86_64",
  summary = "video game music file emulation/playback library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgme/libgme-0.6.5-1-x86_64.pkg.tar.zst",
  sha256  = "bab9e96118eb4df415897823d243917afef708a9d2724d2f4319ed96f70960fc",
  deps    = { "glibc", "libstdc++", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgme.so.0.6.5")
  end,
}
