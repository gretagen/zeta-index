return {
  name    = "pcmanfm",
  version = "2.1.0",
  summary = "Lightweight GTK3 file manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pcmanfm/pcmanfm-2.1.0.tar.gz",
  sha256  = "f7e57bddbc28f54ee1c4c17b1b9433d58d0a328a326b7ff946954ae2ffddfd74",
  deps    = { "glibc", "libfm", "libfm-gtk3", "gtk3", "lxmenu-data" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pcmanfm")
  end,
}
