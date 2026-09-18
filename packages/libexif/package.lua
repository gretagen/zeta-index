return {
  name    = "libexif",
  version = "0.6.24",
  summary = "EXIF parsing library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libexif/libexif-0.6.24.tar.gz",
  sha256  = "9deb5d6641665748bea12796969f4a0808e9f3868e78579059114a4dd11cf20a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libexif.so.12")
  end,
}
