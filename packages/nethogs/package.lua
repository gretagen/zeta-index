return {
  name    = "nethogs",
  version = "0.8.8-2-x86_64",
  summary = "Terminal network bandwidth monitor grouped by process (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/nethogs/nethogs-0.8.8-2-x86_64.pkg.tar.zst",
  sha256  = "7175e5e56e43ef0d5780793f496918921a9e09abf725948582d293bbe0c39b6c",
  deps    = { "glibc", "libpcap", "ncurses", "libstdc++", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nethogs")
  end,
}
