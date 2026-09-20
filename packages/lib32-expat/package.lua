return {
  name    = "lib32-expat",
  version = "2.8.4",
  summary = "An XML Parser library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-expat/lib32-expat.pkg.tar.zst",
  sha256  = "9de01526abb7aed6418ef9f6a3a1c21456e9962620d05b62b5bbd2a8b843da8c",
  deps    = { "expat", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
