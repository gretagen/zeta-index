return {
  name    = "vifm",
  version = "0.14.4-1-x86_64",
  summary = "Ncurses-based file manager with vi keybindings (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/vifm/vifm-0.14.4-1-x86_64.pkg.tar.zst",
  sha256  = "0800cdfefee4b95a49aab42bebba84cfb6303a6da7d45d8d9a9305774f7f0f54",
  deps    = { "glibc", "ncurses", "glib", "file" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/vifm")
  end,
}
