return {
  name    = "wildmidi",
  version = "0.5.0-1-x86_64",
  summary = "simple software MIDI player which has a core softsynth library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wildmidi/wildmidi-0.5.0-1-x86_64.pkg.tar.zst",
  sha256  = "a8848de09e116ce942b6d9e8a0b1ab214e9fb63f5b7a9dd75d396b695b1a2eb0",
  deps    = { "alsa-lib", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/wildmidi")
  end,
}
