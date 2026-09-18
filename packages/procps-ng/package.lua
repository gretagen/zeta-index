return {
  name    = "procps-ng",
  version = "4.0.7rc1",
  summary = "libproc2 process information library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/procps-ng/procps-ng-4.0.7rc1.tar.gz",
  sha256  = "edd4d6a5dfc8ed4a82268b27bb207f7dfc00c03666caa3ac6f5e4ccae5dac440",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libproc2.so.1")
  end,
}
