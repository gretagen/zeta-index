return {
  name    = "libgepub",
  version = "0.7.3-2-x86_64",
  summary = "EPUB library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgepub/libgepub-0.7.3-2-x86_64.pkg.tar.zst",
  sha256  = "7b5b1aa7633ec80e48b38959b0df6c5cd84a07ef240d06d7d8570c68954086ea",
  deps    = { "glib", "libarchive", "libsoup3", "libxml2", "webkit2gtk-4.1" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
