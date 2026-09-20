return {
  name    = "libxau",
  version = "1.0.12",
  summary = "X11 authorisation library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxau/libxau.pkg.tar.zst",
  sha256  = "605c8b059c36792f4e0cc235acadf39d0762df6c7878825a1be01a00ae7ea21e",
  deps    = { "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
