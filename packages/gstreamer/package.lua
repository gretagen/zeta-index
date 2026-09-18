return {
  name    = "gstreamer",
  version = "1.28.7",
  summary = "Multimedia framework (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gstreamer/gstreamer-1.28.7.pkg.tar.zst",
  sha256  = "dc4ca6f8cc1af174b4e1028cdbbe05c967f8b76e9c790bebbad2656c2ac7b1d8",
  deps    = { "glib", "libcap" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
