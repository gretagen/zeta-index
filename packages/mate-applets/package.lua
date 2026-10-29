return {
  name    = "mate-applets",
  version = "1.28.1",
  summary = "Panel applets for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-applets/mate-applets-1.28.1.tar.gz",
  sha256  = "c581fd0acd6d5a69f9235774e18de0d7868dfdd9fe906530e281c81e0e41e2ef",
  deps    = { "glibc", "glib", "gtk3", "cpupower", "gtksourceview4", "libgtop", "libnotify", "mate-panel", "polkit", "upower", "wireless_tools", "libnl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}
