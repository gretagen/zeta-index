return {
  name    = "lxsession",
  version = "0.5.1",
  summary = "LXDE session manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxsession/lxsession-0.5.1.tar.gz",
  sha256  = "d0b2d5dfe13a4dcf6e993fae337337a2264157c8ba6b70ed7540cacbf4340637",
  deps    = { "glibc", "gtk3", "polkit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxsession")
  end,
}
