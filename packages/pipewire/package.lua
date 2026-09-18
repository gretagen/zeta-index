return {
  name = "pipewire",
  version = "1.6.8",
  summary = "Multimedia processing graph and audio/video daemon",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pipewire/pipewire-1.6.8.tar.gz",
  sha256 = "b0c2cbf14f04b81ba1957ffe56312cafa7dd347174bb8bea02d8002eabbcc1c6",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:env_set("LD_LIBRARY_PATH", p.install_root .. "/usr/lib")
    p:run(p.install_root .. "/usr/bin/pipewire --version")
  end,
}
