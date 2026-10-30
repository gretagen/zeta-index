return {
  name    = "slim",
  version = "1.4.1-3-x86_64",
  summary = "simple Login Manager resurrected",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/slim/slim-1.4.1-3-x86_64.pkg.tar.zst",
  sha256  = "2bf188c80c87fcd8c6408b7ee3d892a476aad76e88ac6e85c645553c420584bd",
  deps    = { "libgcc", "libjpeg-turbo", "libpng", "libX11", "libXext", "libXft", "libXmu", "libXrandr", "pam", "ttf-liberation", "xorg-xauth" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/slim")
  end,
}
