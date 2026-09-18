return {
  name    = "glycin",
  version = "2.1.5",
  summary = "Sandboxed and extendable image decoding",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glycin/glycin-2.1.5.tar.gz",
  sha256  = "e81999bf85f9c778de3ee1ad174cf83c259136d6d6dbacf398910e1afe1b0674",
  deps    = { "glibc", "cairo", "glib", "lcms2", "librsvg", "libseccomp" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libglycin-2.so.0")
  end,
}
