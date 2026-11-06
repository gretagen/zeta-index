return {
  name    = "hyfetch",
  version = "2.1.1",
  summary = "Neofetch with LGBTQ+ pride flags",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyfetch/hyfetch-2.1.1.tar.gz",
  sha256  = "1116f176724d783ee8d4106aa93f0e67499e10b40b094c9b8bfcc1283ac7c7fa",
  deps    = { "python", "python-prompt-toolkit", "gcc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hyfetch && test -x " .. p.install_root .. "/usr/bin/hyfetch.v1 && test -x " .. p.install_root .. "/usr/bin/hyfetch.rs && test -x " .. p.install_root .. "/usr/bin/neowofetch && test -x " .. p.install_root .. "/usr/lib/python3.14/site-packages/hyfetch/rust/hyfetch && test -f " .. p.install_root .. "/usr/lib/python3.14/site-packages/neofetch && PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import hyfetch, hyfetch.__main__\" && PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 " .. p.install_root .. "/usr/bin/hyfetch --version | grep -q 2.1.1")
  end,
}
