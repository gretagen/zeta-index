return {
  name    = "nnn",
  version = "5.3",
  summary = "Terminal file manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/nnn/nnn-5.3-1-x86_64.pkg.tar.zst",
  sha256  = "76c2782f8fcd26b39568721bb9bef92e858bb54b806fac82f007738ba0c2044c",
  deps    = { "glibc", "ncurses", "readline" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nnn")
  end,
}
