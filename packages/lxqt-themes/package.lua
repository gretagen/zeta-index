return {
  name    = "lxqt-themes",
  version = "2.1.0",
  summary = "LXQt component (lxqt-themes)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-themes/lxqt-themes-2.1.0.tar.gz",
  sha256  = "4d628e6086ed178db39adb7a98bfa39f961b0a398059b01e332c1230f93368e1",
  deps    = {  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/icons")
  end,
}
