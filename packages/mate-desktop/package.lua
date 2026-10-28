return {
  name    = "mate-desktop",
  version = "1.28.2",
  summary = "Desktop library for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-desktop/mate-desktop-1.28.2.tar.gz",
  sha256  = "f4ce8a73b733e95499092689e793e68f98666ddee44ad26e770ae2dfbd740f28",
  deps    = { "libdconf", "glibc", "gtk3", "startup-notification", "iso-codes" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -f " .. p.install_root .. "/usr/lib/pkgconfig/mate-desktop-2.0.pc")
  end,
}
