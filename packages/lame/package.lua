return {
  name    = "lame",
  version = "4.0",
  summary = "LAME MP3 encoder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lame/lame-4.0-1-x86_64.pkg.tar.zst",
  sha256  = "2c7bf7150e41a12b7b2ef62fec6ab5a071e20b537ac734490922fa64c204af77",
  deps    = { "glibc", "mpg123", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
