return {
  name    = "libpgm",
  version = "5.3.128",
  summary = "OpenPGM implementation",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libpgm/libpgm-5.3.128-4-x86_64.pkg.tar.zst",
  sha256  = "cca617d50f88c96d93fbedb75ec5e948e4a3471680e708e88f7d4e391923be4d",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
