return {
  name    = "pipes.sh",
  version = "1.3.0",
  summary = "Animated pipes terminal screensaver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pipes.sh/pipes.sh-1.3.0.tar.gz",
  sha256  = "94cda91418655b9ca8622bd2f17b39a49991eab4a2f17d3ef5922f6b8b782924",
  deps    = { "bash", "ncurses", "coreutils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pipes.sh && bash -n " .. p.install_root .. "/usr/bin/pipes.sh && test -f " .. p.install_root .. "/usr/share/man/man6/pipes.sh.6")
  end,
}
