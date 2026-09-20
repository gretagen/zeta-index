return {
  name    = "cryptsetup",
  version = "2.8.8",
  summary = "Userspace setup tool for transparent encryption of block devices using dm-crypt",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/cryptsetup/cryptsetup.pkg.tar.zst",
  sha256  = "322f0e79a7d659d5e645e96cad3d30966f7dd5476f984f96b50a4f4cea274640",
  deps    = { "device-mapper", "openssl", "util-linux-libs", "json-c", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
