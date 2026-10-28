return {
  name    = "ghostty",
  version = "1.0.0",
  summary = "fast, feature-rich, and cross-platform terminal emulator",
  url     = "https://release.files.ghostty.org/1.4.0/ghostty-1.4.0.tar.gz",
  sha256  = "cb188ac6c3a8278d5fd7bfef15d8c017104c87f638b5560eb38024a71ae0f005",
  deps    = {
    "glibc",
    "fontconfig",
    "freetype",
    "libpng",
    "pixman",
    "harfbuzz",
    "egl",
    "libx11",
    "libxcb",
    "wayland",
    "gtk4",
    "libadwaita",
  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ghostty")
  end,
}

