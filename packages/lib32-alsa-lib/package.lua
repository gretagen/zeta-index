return {
  name    = "lib32-alsa-lib",
  version = "1.2.16.1",
  summary = "An alternative implementation of Linux sound support (32 bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-alsa-lib/lib32-alsa-lib.pkg.tar.zst",
  sha256  = "a07a21992354a49e8aa9e10923137e0a3971a273d97e033dc3b1d9b811feaa6b",
  deps    = { "alsa-lib", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
