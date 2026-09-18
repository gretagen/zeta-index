return {
  name = "libXau",
  version = "1.0.12",
  summary = "X authorization protocol library (X11)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXau/libXau-1.0.12.tar.gz",
  sha256 = "fc9f9e6292efeada77f1b105378a65ee41c287443070a6b6c07d2b057b8719be",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXau.so.6")
  end,
}
