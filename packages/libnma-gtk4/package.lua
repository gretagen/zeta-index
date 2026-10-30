return {
  name    = "libnma-gtk4",
  version = "1.10.6-3-x86_64",
  summary = "networkManager GUI client library (GTK4)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libnma-gtk4/libnma-gtk4-1.10.6-3-x86_64.pkg.tar.zst",
  sha256  = "60ec211bcb72ed3b341e7242e5e680bac92f8f8478b198a1155f3793f47f8c61",
  deps    = { "libnma-common", "gtk4" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnma-gtk4.so.0.0.0")
  end,
}
