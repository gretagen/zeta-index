return {
  name    = "freerdp",
  version = "3.32.2-1-x86_64",
  summary = "free implementation of the Remote Desktop Protocol (RDP)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/freerdp/freerdp-3.32.2-1-x86_64.pkg.tar.zst",
  sha256  = "4701b04681d3719647b1bf5b8d3dad195e59a66b75610194f14c204668fa7904",
  deps    = { "fuse3", "glibc", "jansson", "libcups", "libgcc", "libstdc++", "libX11", "libXcursor", "libXext", "libXdamage", "libXfixes", "xkbcommon", "libXi", "libXinerama", "libXkbfile", "libXrandr", "libXrender", "libXtst", "sdl3", "sdl3_ttf", "wayland", "alsa-lib", "ffmpeg", "icu", "krb5", "libcbor", "libfido2", "libjpeg-turbo", "libpng", "libpulse", "libusb", "libwebp", "openssl", "pam", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/freerdp/server/proxy/plugins/libproxy-bitmap-filter-plugin.so")
  end,
}
