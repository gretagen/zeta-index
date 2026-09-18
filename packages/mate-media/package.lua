return {
  name    = "mate-media",
  version = "1.28.1",
  summary = "Media manager for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-media/mate-media-1.28.1.pkg.tar.zst",
  sha256  = "7563eb48b0115088677ded834df5d8b96ee63e453d329ae25175d83e809e8055",
  deps    = { "libcanberra", "libmatemixer", "mate-desktop", "mate-panel", "gettext" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
