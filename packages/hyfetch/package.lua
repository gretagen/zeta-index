return {
  name    = "hyfetch",
  version = "2.1.1",
  summary = "Neofetch with LGBTQ+ pride flags",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyfetch/hyfetch-2.1.1.tar.gz",
  sha256  = "c2429b973a09b6e57c31f479346493e3c52aa567b3f55e2131fb517eb1de596d",
  deps    = { "python", "python-prompt-toolkit", "gcc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hyfetch && test -x " .. p.install_root .. "/usr/bin/hyfetch.v1 && test -x " .. p.install_root .. "/usr/bin/hyfetch.rs && test -x " .. p.install_root .. "/usr/bin/neowofetch && test -x " .. p.install_root .. "/usr/lib/python3.14/site-packages/hyfetch/rust/hyfetch && PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import hyfetch, hyfetch.__main__\"")
  end,
}
