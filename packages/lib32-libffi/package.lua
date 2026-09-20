return {
  name    = "lib32-libffi",
  version = "3.8.0",
  summary = "Portable foreign function interface library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libffi/lib32-libffi.pkg.tar.zst",
  sha256  = "8c9852aec3d3ac4e0cba2bd15ab161e64fe0c538a36cb76eac5d7bbfb30fa087",
  deps    = { "lib32-glibc", "libffi", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
