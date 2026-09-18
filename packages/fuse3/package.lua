return {
  name    = "fuse3",
  version = "3.18.3",
  summary = "Filesystem in Userspace (v3) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fuse3/fuse3-3.18.3.pkg.tar.zst",
  sha256  = "7171289bad5b88b01b2a2737ecc2a4b0a334a2fc045b6d74c9af57aa863c9547",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
