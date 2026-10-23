return {
  name    = "libkexiv2",
  version = "26.08.2",
  summary = "KDE: Wrapper around Exiv2 library to manipulate picture metadata as EXIF and XMP",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libkexiv2/libkexiv2-26.08.2.tar.gz",
  sha256  = "34c8e7e7c431732fb3c35b9326536f882de741a3175bcd5e7424e42ef7c68944",
  deps    = { "glibc", "qtbase", "gcc", "exiv2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
