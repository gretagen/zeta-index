return {
  name    = "bitstreamvera",
  version = "1.10",
  summary = "Bitstream Vera TrueType fonts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bitstreamvera/bitstreamvera-1.10.tar.gz",
  sha256  = "4ade62eadb6b3f529af397fc286df76870db4e4e7e581706bd228debf3ec462d",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/fonts/truetype/bitstream-vera/Vera.ttf")
  end,
}
