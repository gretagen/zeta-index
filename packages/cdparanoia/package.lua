return {
  name    = "cdparanoia",
  version = "10.2-10-x86_64",
  summary = "compact Disc Digital Audio extraction tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cdparanoia/cdparanoia-10.2-10-x86_64.pkg.tar.zst",
  sha256  = "03cafb8d7d0cdd713aec4e9e6cf8137562ddbbb07ac10c5a24ae16bba14bc52f",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/cdparanoia")
  end,
}
