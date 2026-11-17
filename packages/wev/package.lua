return {
  name    = "wev",
  version = "1.1.0",
  summary = "Wayland event viewer (xev for Wayland)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wev/wev-1.1.0.tar.gz",
  sha256  = "4d052a9d1dd2f04027d9e91abf390ae552a2bd40f4d24efd56fc63ac33b1316f",
  deps    = { "glibc", "wayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wev && test -f " .. p.install_root .. "/usr/share/man/man1/wev.1 && " .. p.install_root .. "/usr/bin/wev -h 2>&1 | grep -qi usage")
  end,
}
