return {
  name    = "genkernel",
  version = "2.2.1",
  summary = "Haliade system kernel generation script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/genkernel/genkernel-2.2.1.tar.gz",
  sha256  = "e793b8602e3c3df2a754dece74565a39e4ce46c45f28bbb3602eb3e04334e859",
  deps    = { "bash", "curl", "make", "binutils", "gcc-minimal", "bc", "libelf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genkernel")
  end,
}
