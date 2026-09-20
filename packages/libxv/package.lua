return {
  name    = "libxv",
  version = "1.0.13",
  summary = "X Video extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxv/libxv-1.0.13-1-x86_64.pkg.tar.zst",
  sha256  = "9cae2311e50945fd5144575aa010da6009ca85d68a492f253920ac16c936e290",
  deps    = { "glibc", "libxext", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
