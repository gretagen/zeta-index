return {
  name    = "libglvnd",
  version = "1.7.0",
  summary = "GLVND EGL/GL libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libglvnd/libglvnd-1.7.0-3-x86_64.pkg.tar.zst",
  sha256  = "633c2e95d7798d0ce7ee1b7fe970a22325f7f6d35b9f923bb61b223a80934437",
  deps    = { "glibc", "libXext", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
