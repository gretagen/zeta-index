return {
  name    = "libavc1394",
  version = "0.5.4",
  summary = "IEEE 1394 AV/C devices",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libavc1394/libavc1394-0.5.4-7-x86_64.pkg.tar.zst",
  sha256  = "fc51adf3f9af30d7d58abd8962e39ae85bd6c8c36ede30e24ea3400d195a5b0a",
  deps    = { "glibc", "libraw1394", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
