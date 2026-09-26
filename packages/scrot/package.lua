return {
  name    = "scrot",
  version = "2.0.0-1",
  summary = "Take a screenshot in X",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/scrot/scrot-2.0.0-1-x86_64.pkg.tar.zst",
  sha256  = "81d36d830574621fc0875d7b44e64bec522ff745a45e83d2f1013726ab930784",
  deps    = { "mlib2", "libbsd", "libxcomposite", "libxext", "libxfixes", "xorg-xrandr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/scrot")
  end,
}
