return {
  name    = "vlc",
  version = "3.0.23",
  summary = "VLC media player",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/vlc/vlc-3.0.23.tar.gz",
  sha256  = "a9fab409e6ee77a00f3ffa261ff3693c801e91b5942f70656d9c807a574d7325",
  deps    = { "glibc", "a52dec", "alsa-lib", "dav1d", "faad2", "flac", "gnutls", "libX11", "libarchive", "libebml", "libglvnd", "libmatroska", "libogg", "libpng", "libshout", "libtheora", "libva", "libvorbis", "libvpx", "libxcb", "libxml2", "libz", "lua51", "mpg123", "opus", "pulseaudio", "qt5", "speex", "taglib", "twolame", "wayland", "xcb-util-keysyms" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/vlc")
  end,
}
