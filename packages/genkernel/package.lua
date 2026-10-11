return {
  name    = "genkernel",
  version = "2.2",
  summary = "Haliade OS kernel generation script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/genkernel/genkernel-2.2.tar.gz",
  sha256  = "1f44f68140e7aa79eced94b6c986f743ea7eab260a2b85bc45b21a873e0cd805",
  deps    = { "bash", "curl", "make", "binutils", "gcc-minimal", "bc", "libelf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genkernel")
  end,
}
