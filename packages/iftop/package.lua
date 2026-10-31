return {
  name    = "iftop",
  version = "1.0pre4-6-x86_64",
  summary = "Display bandwidth usage on an interface (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/iftop/iftop-1.0pre4-6-x86_64.pkg.tar.zst",
  sha256  = "a84c5f3ebab511eb54e9a5a38fec0016dc708917f314a4f8fe817b40943e6ff8",
  deps    = { "glibc", "libpcap", "ncurses" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iftop")
  end,
}
