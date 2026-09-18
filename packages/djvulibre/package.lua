return {
  name    = "djvulibre",
  version = "3.5.30.1",
  summary = "DjVu library and tools (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/djvulibre/djvulibre-3.5.30.1.pkg.tar.zst",
  sha256  = "9fe17b451dac3c169aaa8e4ed8dae5776e1410f7712d8bd2751b6c3d4472ed5d",
  deps    = { "hicolor-icon-theme", "libjpeg-turbo" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
