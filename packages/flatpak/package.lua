return {
  name    = "flatpak",
  version = "1.18.0",
  summary = "Linux application sandboxing and distribution framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-deliverance/refs/heads/main/flatpak/flatpak-1.18.0.deb",
  sha256  = "f2bf1ba3d6170e36eaedf024a8b0a0d3fbb881eb5432155bb435991c8421a3e2",
  deps    = { "glibc", "libostree", "libdconf", "libappstream", "libcurl", "libxml2", "libarchive", "libseccomp", "libfuse3", "libjson-glib", "gpgme", "gnupg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/flatpak")
  end,
}
