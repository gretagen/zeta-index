return {
  name    = "tmux",
  version = "3.7_c",
  summary = "Terminal multiplexer (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/tmux/tmux-3.7_c-1-x86_64.pkg.tar.zst",
  sha256  = "dacfb3eb339bb87bd08be4b8134543ae4911243f8c90d0b9ef8dd98968cf40df",
  deps    = { "libevent", "ncurses", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("tmux -V")
  end,
}
