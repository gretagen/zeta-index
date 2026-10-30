return {
  name    = "bemenu",
  version = "0.6.23-1-x86_64",
  summary = "dynamic menu library and client program inspired by dmenu",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/bemenu/bemenu-0.6.23-1-x86_64.pkg.tar.zst",
  sha256  = "3d7df9590e9f0e541b8a0d959a9a960261fde6e3f6851bdf98a1949a97acfe0c",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/bemenu")
  end,
}
