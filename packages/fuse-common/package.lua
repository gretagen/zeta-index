return {
  name    = "fuse-common",
  version = "3.18.3",
  summary = "Common files for fuse2/3 packages",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/fuse-common/fuse-common.pkg.tar.zst",
  sha256  = "6948976906ea830ab210401402ab849e8b5211dd34952e82a92e28a9db3a7389",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
