return {
  name    = "libsm",
  version = "1.2.6",
  summary = "X11 Session Management library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libsm/libsm.pkg.tar.zst",
  sha256  = "ce334b07a9701ba6ef4d610257500f7b035dc1cdc0a658e056d293547cde0976",
  deps    = { "util-linux-libs", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
