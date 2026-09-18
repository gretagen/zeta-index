return {
  name    = "fribidi",
  version = "1.0.16",
  summary = "Bidirectional text algorithm library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fribidi/fribidi-1.0.16.tar.gz",
  sha256  = "879298ea6037926aa47a588effc464e84d881af7d61392077e2211432c59cec2",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libfribidi.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libfribidi.so.0 | grep -q 'libfribidi.so.0'")
  end,
}
