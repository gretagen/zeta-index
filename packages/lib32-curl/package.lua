return {
  name    = "lib32-curl",
  version = "8.22.0",
  summary = "command line tool and library for transferring data with URLs (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-curl/lib32-curl.pkg.tar.zst",
  sha256  = "061569027d0ae5b4820c610cf1c7b7898c5c1fc75293c589b16fe4558617e125",
  deps    = { "curl", "lib32-brotli", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
