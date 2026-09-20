return {
  name    = "lib32-libxau",
  version = "1.0.12",
  summary = "X11 authorisation library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxau/lib32-libxau.pkg.tar.zst",
  sha256  = "00b53639b5a586863df8eadaf5801150ab07c80264be9b1ccb320f710e9b4c05",
  deps    = { "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
