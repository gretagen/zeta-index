return {
  name    = "xdg-user-dirs",
  version = "0.18",
  summary = "XDG user dirs management tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-user-dirs/xdg-user-dirs-0.18.tar.gz",
  sha256  = "5c8b6b5fb7bc0504a70eabad27c5a61056aab86339ade355b55d78c46201913c",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xdg-user-dirs-update")
  end,
}
