return {
  name    = "marco",
  version = "1.28.1",
  summary = "Window manager for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/marco/marco-1.28.1.tar.gz",
  sha256  = "7ea924562d4f2f79e5327bdde44ecd83823fade9ffd1f8512303903359163b19",
  deps    = { "libdconf", "startup-notification", "glibc", "glib", "gtk3", "libcanberra", "libgtop", "mate-desktop", "zenity", "libXpresent", "gettext", "libXres", "libSM" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/marco")
  end,
}
