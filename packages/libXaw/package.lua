return {
  name    = "libXaw",
  version = "1.0.16",
  summary = "X11 Athena Widget set",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXaw/libXaw-1.0.16.tar.gz",
  sha256  = "0a46c9d3848486ab2aa4e1c07c2aa652f998c7db22337c2eb69142e9928147cd",
  deps    = { "glibc", "libX11", "libXext", "libXt", "libXmu" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libXaw.so.7 && readelf -d " .. p.install_root .. "/usr/lib/libXaw.so.7 | grep -q 'libXaw.so.7'")
  end,
}
