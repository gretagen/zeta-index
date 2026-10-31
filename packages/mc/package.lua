return {
  name    = "mc",
  version = "4.8.33-1-x86_64",
  summary = "Midnight Commander: visual file manager (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mc/mc-4.8.33-1-x86_64.pkg.tar.zst",
  sha256  = "b6178495cae163caa00707ebea178da3715a58e8f3414b19980e0846df2864f6",
  deps    = { "glibc", "slang", "gpm", "e2fsprogs", "libssh2", "glib", "bash", "which" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mc")
  end,
}
