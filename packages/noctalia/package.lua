return {
  name    = "noctalia",
  version = "5.3.0",
  summary = "A sleek, customizable desktop shell crafted for Wayland.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/noctalia/noctalia-5.3.0.tar.gz",
  sha256  = "ff182cc4e6704a24680ba56f2a251b4e1f172f72ea78046eba3d86b46b397871",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++", "sdbus-cpp", "wayland", "libglvnd", "egl", "freetype", "fontconfig", "cairo", "pango", "harfbuzz", "librsvg", "xkbcommon", "glib", "libsecret", "libsodium", "polkit", "pam", "pipewire", "wireplumber", "curl", "libqalculate", "libxml2", "md4c", "libical", "libwebp", "libjxl", "libsndfile", "tomlplusplus", "jemalloc", "git", "upower" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/noctalia && test -f " .. p.install_root .. "/usr/share/noctalia/assets/emoji.json && test -f " .. p.install_root .. "/usr/share/noctalia/assets/fonts/noctalia-tabler.ttf && test -f " .. p.install_root .. "/usr/share/noctalia/assets/templates/builtin.toml && test -f " .. p.install_root .. "/usr/share/noctalia/assets/translations/en.json && test -f " .. p.install_root .. "/usr/share/applications/dev.noctalia.Noctalia.desktop && test -f " .. p.install_root .. "/usr/share/icons/hicolor/scalable/apps/noctalia.svg && test -f " .. p.install_root .. "/usr/share/bash-completion/completions/noctalia && " .. p.install_root .. "/usr/bin/noctalia --version | grep -q 5.3.0")
  end,
}
