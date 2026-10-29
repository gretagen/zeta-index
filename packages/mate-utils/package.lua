return {
  name    = "mate-utils",
  version = "1.28.0",
  summary = "Utilities for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-utils/mate-utils-1.28.0.tar.gz",
  sha256  = "00545b7346ceb2b0e7cbb12c99a82a81726a0e33a8e5080bbe119bfbc7bf316a",
  deps    = { "mate-panel", "glibc", "glib", "gtk3", "mate-desktop", "gettext", "libcanberra", "libgtop", "libSM", "udisks2", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}
