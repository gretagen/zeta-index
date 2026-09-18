return {
  name    = "micro",
  version = "2.0.15",
  summary = "Modern and intuitive terminal-based text editor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/micro/micro-2.0.15.tar.gz",
  sha256  = "05af31e389e9e8df10de3095ae23a9c96bdd5ba44d2b01492cfcae37f072c96e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/micro")
  end,
}
