return {
  name    = "gnome-user-docs",
  version = "51.0-1-any",
  summary = "user documentation for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-user-docs/gnome-user-docs-51.0-1-any.pkg.tar.zst",
  sha256  = "a4a5f0aa6a816464c66290a509124f9cd28975dd35064b937e8667f4b592799e",
  deps    = { "yelp" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/help/C/gnome-help/a11y-bouncekeys.page")
  end,
}
