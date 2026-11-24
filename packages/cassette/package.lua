return {
  name    = "cassette",
  version = "0.1.0",
  summary = "Terminal music and video player (Rust TUI, mpv video backend)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cassette/cassette-0.1.0.tar.gz",
  sha256  = "56e1c29ef7d4bd4a9bef2831ea8fc0f87751fc9c9a44ccb76c03761cdc437e71",
  deps    = { "glibc", "libgcc", "alsa-lib", "pipewire", "mpv" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cassette && test -f " .. p.install_root .. "/usr/share/man/man1/cassette.1.gz && test -f " .. p.install_root .. "/usr/share/licenses/cassette/LICENSE && " .. p.install_root .. "/usr/bin/cassette --version | grep -q 'cassette 0.1.0'")
  end,
}
