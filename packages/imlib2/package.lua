return {
  name    = "imlib2",
  version = "1.12.6",
  summary = "Image loading and rendering library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/imlib2/imlib2-1.12.6.tar.gz",
  sha256  = "8aa34f4cfd0edb770f9a5af632dbaac3784902c66fb7b3236c2e2fab97b1153a",
  deps    = { "glibc", "freetype", "libXext", "libxcb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libImlib2.so.1")
  end,
}
