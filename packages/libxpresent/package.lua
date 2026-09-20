return {
  name    = "libxpresent",
  version = "1.0.2",
  summary = "X Present Extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxpresent/libxpresent.pkg.tar.zst",
  sha256  = "78552cf8ae3218508dfd32317dd0d9bb99376266a372738bb4eaed4d745c41bc",
  deps    = { "libxfixes", "libxrandr", "libxext", "libx11", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
