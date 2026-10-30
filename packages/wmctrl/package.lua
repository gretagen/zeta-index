return {
  name    = "wmctrl",
  version = "1.07-6-x86_64",
  summary = "control your EWMH compliant window manager from command line",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wmctrl/wmctrl-1.07-6-x86_64.pkg.tar.zst",
  sha256  = "61c73328483b5bd45fe623308b5e73c723d8dbbbe9747bbb24d34043ee670366",
  deps    = { "glib", "libXmu" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/wmctrl")
  end,
}
