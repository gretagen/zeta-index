return {
  name = "pulseaudio",
  version = "17.0",
  summary = "Network-capable sound server and client library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pulseaudio/pulseaudio-17.0.tar.gz",
  sha256 = "d3f2bf9d794329f61b5c4182957556376abdf76effc73ba0d4df2e691b335582",
  deps = { "glibc", "libsndfile", "libtdb" },
  archive = { strip = 1 },
  test = function(p)
    p:env_set("LD_LIBRARY_PATH", p.install_root .. "/usr/lib:" .. p.install_root .. "/usr/lib/pulseaudio")
    p:run(p.install_root .. "/usr/bin/pulseaudio --version")
  end,
}
