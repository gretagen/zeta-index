return {
  name    = "htop",
  version = "3.5.2",
  summary = "Interactive process viewer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/htop/htop-3.5.2.tar.gz",
  sha256  = "9d12e36eec570bbce3620a729d82bed82fd087b911c494c95a243bb47075ebed",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/htop")
  end,
}
