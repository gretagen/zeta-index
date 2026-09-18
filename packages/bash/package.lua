return {
  name    = "bash",
  version = "5.3",
  summary = "GNU Bourne Again SHell",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bash/bash-5.3.tar.gz",
  sha256  = "a4dcd8905dc86be8c034dbfc9a64ceda7862484e9db087f7ae8769221b7f45c8",
  deps    = { "glibc", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bash && test -L " .. p.install_root .. "/usr/bin/sh")
  end,
}
