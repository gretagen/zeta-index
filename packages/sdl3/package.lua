return {
  name    = "sdl3",
  version = "3.4.18-1-x86_64",
  summary = "a library for portable low-level access to a video framebuffer, audio output, mouse, and",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sdl3/sdl3-3.4.18-1-x86_64.pkg.tar.zst",
  sha256  = "fbcd4dbe7d9609ab60ccfb0a9ad559df242823caba18ed1e6fc7c15abe7bc04e",
  deps    = { "glibc", "libXext", "libXrender", "libX11", "mesa-full", "libXcursor", "hidapi", "libusb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libSDL3.so.0.4.18")
  end,
}
