return {
  name    = "libfm",
  version = "1.4.1",
  summary = "File manager library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libfm/libfm-1.4.1.tar.gz",
  sha256  = "633582a0b9d468b7a83bf47a9e3b631dbbec31e0ddcbe55b4bfa0f2a8a69550d",
  deps    = { "glibc", "menu-cache", "libfm-extra", "libexif" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libfm.so.4")
  end,
}
