return {
  name    = "caja",
  version = "1.28.0",
  summary = "File manager for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/caja/caja-1.28.0.tar.gz",
  sha256  = "314ef16de887236657a5d92bcc37ae9b75914c841acc5032c15015bb96e76283",
  deps    = { "glibc", "glib", "gtk3", "exempi", "gvfs", "libexif", "libSM", "mate-desktop", "libnotify", "gtk-layer-shell" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/caja")
  end,
}
