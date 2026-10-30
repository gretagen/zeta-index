return {
  name    = "appstream",
  version = "1.2.2-1-x86_64",
  summary = "provides a standard for creating app stores across distributions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/appstream/appstream-1.2.2-1-x86_64.pkg.tar.zst",
  sha256  = "806aec144a0c02820b69da890f89df8738db693b6a2faff48c422546ff98d5e9",
  deps    = { "cairo", "curl", "fontconfig", "freetype", "glib", "glibc", "libblake3", "libfyaml", "libgcc", "libstemmer", "libvips", "libxml2", "libxmlb", "pango", "systemd-libs", "zstd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libappstream-compose.so.1.2.2")
  end,
}
