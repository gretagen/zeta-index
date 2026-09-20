return {
  name    = "snappy",
  version = "1.2.2",
  summary = "Compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/snappy/snappy-1.2.2-3-x86_64.pkg.tar.zst",
  sha256  = "7aad7fd4c96a392d5af1d6c03d635ac0c391e2e3856d20adaa88c19ca7848715",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
