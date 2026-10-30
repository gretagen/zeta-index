return {
  name    = "icewm",
  version = "4.1.0-1-x86_64",
  summary = "Lightweight stacking window manager for X11",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/icewm/icewm-4.1.0-1-x86_64.pkg.tar.zst",
  sha256  = "5cd77acf3fa77da6e0f15ea56d60c98d982121452dad9fad61fd84fa9bdf2398",
  deps    = { "alsa-lib", "imlib2", "librsvg", "libSM", "libsndfile", "libXcomposite", "libXcursor", "libXdamage", "libXinerama", "libXrandr" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/icewm")
  end,
}
