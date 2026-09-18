return {
  name    = "libsndfile",
  version = "1.2.2",
  summary = "Library for reading and writing audio files",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libsndfile/libsndfile-1.2.2.tar.gz",
  sha256  = "c15b6fc5573df0a6ceb1176507ae96dd20f375ca991048986dd7e7b9eae15136",
  deps    = { "glibc", "alsa-lib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr/lib -name 'libsndfile*.so*' | grep -q .")
  end,
}
