return {
  name    = "lib32-libxss",
  version = "1.2.5",
  summary = "X11 Screen Saver extension library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxss/lib32-libxss.pkg.tar.zst",
  sha256  = "4d69307452bf52b504c7d03b7a90b01da113fa1fc547d1ee67345330c7108c3e",
  deps    = { "lib32-libxext", "libxss", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
