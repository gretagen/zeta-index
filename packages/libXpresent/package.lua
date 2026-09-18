return {
  name    = "libXpresent",
  version = "1.0.1",
  summary = "X11 Present extension",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXpresent/libXpresent-1.0.1.tar.gz",
  sha256  = "08ce13784b8a53168086b668a52ed6858c66859fe4a185461ff943424a17e724",
  deps    = { "glibc", "libX11", "libXext", "libXfixes", "libXrandr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libXpresent.so.1")
  end,
}
