return {
  name    = "iso-codes",
  version = "4.18.0",
  summary = "ISO language, region, script and currency code lists",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iso-codes/iso-codes-4.18.0.tar.gz",
  sha256  = "1338d837b00a552569a5b522217dc8aaf8d376bef9e5338c5a6291f77eb75c92",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/pkgconfig/iso-codes.pc")
  end,
}
