return {
  name    = "libxss",
  version = "1.2.3",
  summary = "X11 Screen Saver extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxss/libxss-1.2.3.tar.gz",
  sha256  = "e4735225250edbdba11d3a95d4c1f439481cf6fa98616e6cf07a234d5ef430de",
  deps    = { "glibc", "libXext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libXss.so.1")
  end,
}
