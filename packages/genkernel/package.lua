return {
  name    = "genkernel",
  version = "2.1",
  summary = "Haliade OS kernel generation script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/genkernel/genkernel-2.1.tar.gz",
  sha256  = "e0dd92103712f8d01f504967b3affc6af9d88d4cfe66b0258c2d5c54e5d6f257",
  deps    = { "bash", "curl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genkernel")
  end,
}
