return {
  name    = "tinyxml2",
  version = "11.0.0-2-x86_64",
  summary = "simple XML parser made for easy integration",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/tinyxml2/tinyxml2-11.0.0-2-x86_64.pkg.tar.zst",
  sha256  = "75ebed93d1496529b97068b17f4aad8c8932a4126f3f5e7ea31c46b0e43e218d",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libtinyxml2.so.11.0.0")
  end,
}
