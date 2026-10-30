return {
  name    = "efl",
  version = "1.28.1-4-x86_64",
  summary = "enlightenment Foundation Libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/efl/efl-1.28.1-4-x86_64.pkg.tar.zst",
  sha256  = "912ec37fa032c6489807831f1def35344c728f912f4a7c6fb092878c20249dcd",
  deps    = { "curl", "dbus", "fontconfig", "freetype", "fribidi", "giflib", "glib", "gstreamer", "gst-plugins-base-libs", "harfbuzz", "hicolor-icon-theme", "libglvnd", "libinput", "libjpeg-turbo", "libpng", "libpulse", "libsndfile", "libtiff", "libunwind", "libwebp", "libX11", "libxcb", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXinerama", "xkbcommon", "libxkbcommon-x11", "libXrandr", "libXrender", "libxss", "libXtst", "lua52", "mailcap", "mesa-full", "openjpeg2", "openssl", "shared-mime-info", "systemd-libs", "ttf-liberation", "util-linux-libs", "wayland", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libecore.so.1.28.1")
  end,
}
