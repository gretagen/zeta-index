return {
  name    = "haliade-utils",
  version = "1.0.2",
  summary = "Haliade system utility scripts (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/haliade-utils/haliade-utils-1.0.1.tar.gz",
  sha256  = "9b99fe91e7f2f513a5963436c9d09a3d0e152988a99eb79361943ba95915897d",
  deps    = { "chronos", "genkernel", "subspace-scripts", "zstrappa", "iniswap", "nacelle" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/haliade-utils/README")
  end,
}
