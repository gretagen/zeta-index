return {
  name    = "exiv2",
  version = "0.28.9",
  summary = "Image metadata (EXIF/IPTC/XMP) library and CLI",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/exiv2/exiv2-0.28.9.tar.gz",
  sha256  = "3fe24b4084720296c28acde2ddfdbe157c3b34c004a3d9958e6f1821b57da890",
  deps    = { "glibc", "gcc", "expat", "inih", "brotli" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -name 'exiv2Config.cmake' | grep -q .")
  end,
}
