return {
  name    = "libXres",
  version = "1.2.2",
  summary = "X11 resource usage extension",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXres/libXres-1.2.2.tar.gz",
  sha256  = "50a75758ad20e29cadd4f99df361a6a3f0b22872ce7426cd24b73b5577d2a9ac",
  deps    = { "glibc", "libX11", "libXext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libXRes.so.1")
  end,
}
