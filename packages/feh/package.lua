return {
  name    = "feh",
  version = "3.13.1",
  summary = "Fast and light image viewer (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/feh/feh-3.13.1-1-x86_64.pkg.tar.zst",
  sha256  = "95ca385f9b59d7cbea1aa75c924ad405af22118013c8719cbea2637d910ebf9a",
  deps    = { "curl", "file", "hicolor-icon-theme", "imlib2", "libexif", "libpng", "libX11", "libXinerama" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/feh")
  end,
}
