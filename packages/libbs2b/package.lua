return {
  name    = "libbs2b",
  version = "3.1.0",
  summary = "Bauer stereo-to-binaural library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libbs2b/libbs2b-3.1.0-10-x86_64.pkg.tar.zst",
  sha256  = "96e64cebd09c01f8ab3271a1633180c11b5aa532aa73408b7bd29c6b5a45dd83",
  deps    = { "glibc", "libsndfile", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
