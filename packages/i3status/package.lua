return {
  name    = "i3status",
  version = "2.15-1-x86_64",
  summary = "generates status bar to use with i3bar, dzen2 or xmobar",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/i3status/i3status-2.15-1-x86_64.pkg.tar.zst",
  sha256  = "5b0d6c42dbd80637f380350f649751ba66f8c13698d013510ed81e71d9a79a4b",
  deps    = { "alsa-lib", "confuse", "libnl", "libpulse", "yajl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/i3status")
  end,
}
