return {
  name    = "libedit",
  version = "20260512_3.1",
  summary = "Command line editor library providing generic line editing, history, and tokenization functions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libedit/libedit-20260512_3.1.tar.gz",
  sha256  = "914a7609f79bb11450dda7cbeb4094c1b473982983cd2424612ff5d2ef0a0473",
  deps    = { "glibc", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libedit.so.0")
  end,
}
