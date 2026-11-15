return {
  name    = "genkernel",
  version = "2.2.2",
  summary = "Haliade system kernel generation script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/genkernel/genkernel-2.2.2.tar.gz",
  sha256  = "5808f71acb3ac3fbc78a75c199e10d4f8b68cb26f7172063b394f28105ccf4c1",
  deps    = { "bash", "curl", "make", "binutils", "gcc-minimal", "bc", "libelf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genkernel && " .. p.install_root .. "/usr/bin/genkernel --help | grep -q 'Usage: genkernel'")
  end,
}
