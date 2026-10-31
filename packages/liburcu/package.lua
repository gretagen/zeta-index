return {
  name    = "liburcu",
  version = "0.15.7-1-x86_64",
  summary = "Userspace RCU library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/liburcu/liburcu-0.15.7-1-x86_64.pkg.tar.zst",
  sha256  = "baf1706ba118e25a8d5841a5c851c947900cc600c414a43d45da700530605ecd",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liburcu.so.8")
  end,
}
