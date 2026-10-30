return {
  name    = "zix",
  version = "0.8.2-1-x86_64",
  summary = "a lightweight C99 portability and data structure library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/zix/zix-0.8.2-1-x86_64.pkg.tar.zst",
  sha256  = "563534f9bf8ac7b17f9936d0a00f2853b7ed8a0154d2d2e8147bf34fa4983dcf",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libzix-0.so.0.8.2")
  end,
}
