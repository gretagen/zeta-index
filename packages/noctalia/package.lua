return {
  name    = "noctalia",
  version = "5.1.0",
  summary = "Sleek, customizable desktop shell crafted for Wayland (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/noctalia/noctalia-5.1.0-1-x86_64.pkg.tar.zst",
  sha256  = "c9c772b8b770766d3e0b75fb9046875fcf8df55ab1095d11ff5a382338067c7c",
  deps    = {
    "glibc", "gcc", "bash", "cairo", "curl", "fontconfig", "freetype", "git",
    "glib", "harfbuzz", "hicolor-icon-theme", "jemalloc", "libglvnd", "libical",
    "libjxl", "libqalculate", "librsvg", "libsecret", "libsndfile", "libsodium",
    "libwebp", "libwireplumber", "libxml2", "md4c", "pam", "pango", "pipewire",
    "polkit", "sdbus-cpp", "tomlplusplus", "wayland", "wireplumber", "xkbcommon",
  },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/noctalia")
    p:run("test -d " .. p.install_root .. "/usr/share/noctalia/assets")
    p:run("test -f " .. p.install_root .. "/usr/share/applications/dev.noctalia.Noctalia.desktop")
  end,
}
