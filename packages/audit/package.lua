return {
  name    = "audit",
  version = "4.2.1",
  summary = "Linux audit userspace library (libaudit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/audit/audit-4.2.1.tar.gz",
  sha256  = "a64df17a43626f3ddda05374e1bb48e8bee98b16279580d351b801dacea64ed0",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libaudit.so")
  end,
}
