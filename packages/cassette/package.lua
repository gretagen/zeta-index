return {
  name    = "cassette",
  version = "0.1.0",
  summary = "Terminal music and video player (Rust TUI, mpv video backend)",
  url     = "https://github.com/homu-sys/cassette/releases/download/0.1.0/cassette-0.1.0.tar.gz",
  sha256  = "a5d40156b916d3e747884956af3b9fac9fb129a98238b12238f7de6d986684eb",
  deps    = { "glibc", "gcc", "mpv", "pipewire", "pulseaudio" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cassette")
  end,
}
