return {
  name = "delta",
  version = "0.20.1",
  summary = "Syntax highlighting pager for git and diff",
  url = "https://github.com/dandavison/delta/releases/download/0.20.1/delta-0.20.1-x86_64-unknown-linux-gnu.tar.gz",
  sha256 = "50f08c879f84c81ceb220e476491a7f492d2c9c671e79918cc44badf961a6240",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/delta --version")
  end,
}
