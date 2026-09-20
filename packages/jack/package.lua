return {
  name    = "jack",
  version = "4",
  summary = "Official JACK example clients and tools",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/jack/jack.pkg.tar.zst",
  sha256  = "19681f522ff15ad89e84b7d72f3a104a777d3ba42e7fa78c09b45976c2999020",
  deps    = { "alsa-lib", "libsamplerate", "libsndfile", "readline", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
