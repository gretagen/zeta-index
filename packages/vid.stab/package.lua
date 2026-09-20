return {
  name    = "vid.stab",
  version = "1.1.2",
  summary = "Video stabilization library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/vid.stab/vid.stab-1.1.2-1-x86_64.pkg.tar.zst",
  sha256  = "e50577203f408e76dad3e7325c98577180fd32c4a0e0440cd85874d03b907676",
  deps    = { "glibc", "libgcc", "libgomp", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
