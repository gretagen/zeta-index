return {
  name    = "lib32-libdrm",
  version = "2.4.134",
  summary = "Userspace interface to kernel DRM services (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libdrm/lib32-libdrm.pkg.tar.zst",
  sha256  = "02ac6a37bc9806ef90551401bd0b00214ded0339e9046e27d972d3df13ea7887",
  deps    = { "lib32-glibc", "libdrm", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
