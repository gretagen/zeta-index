return {
  name    = "cbonsai",
  version = "1.4.2",
  summary = "Bonsai tree generator for the terminal (ncurses)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cbonsai/cbonsai-1.4.2.tar.gz",
  sha256  = "3523242d50fc904fbe700b8cc6cb622fdd81faefc06ed2e2ecb88d8d38020321",
  deps    = { "glibc", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cbonsai && test -f " .. p.install_root .. "/usr/share/man/man6/cbonsai.6 && test -f " .. p.install_root .. "/usr/share/bash-completion/completions/cbonsai && timeout 10 " .. p.install_root .. "/usr/bin/cbonsai -s 1 -l 5 </dev/null")
  end,
}
