return {
  name    = "notepad++",
  version = "8.9.8",
  summary = "Notepad++ text editor for Windows (via Wine)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-exorcism/refs/heads/main/packages/notepad++/notepad++-8.9.8.tar.gz",
  sha256  = "1502404d152d262a1b5a0ce6af5a9a104c53fe9e1f8f5b04fe98ae752ef8379e",
  deps    = { "wine" },
  archive = { strip = 1 },
  install = function(p)
    p:run("chmod +x " .. p.install_root .. "/usr/bin/notepad++")
  end,
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/notepad++ && test -f " .. p.install_root .. "/etc/exes/notepad++.exe")
  end,
}
