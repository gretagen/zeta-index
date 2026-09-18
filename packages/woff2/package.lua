return {
  name    = "woff2",
  version = "1.0.2-6-x86_64",
  summary = "Web Open Font Format 2 (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/woff2/woff2-1.0.2-6-x86_64.pkg.tar.zst",
  sha256  = "febf33aafe2912fb8ba9898fad648b4ef97f03558e2a50460949fd5376c5d6db",
  deps    = { "brotli" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
