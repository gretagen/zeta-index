return {
  name    = "haliade-utils",
  version = "1.0",
  summary = "Haliade OS utility scripts (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/haliade-utils/haliade-utils-1.0.tar.gz",
  sha256  = "27e897236f6aad11b3b0de1e88ee64300c700ea9ccbcafeff37c198c3375b36a",
  deps    = { "genzee", "genkernel", "subspace-scripts", "zstrappa", "iniswap", "declaration", "house-handlers" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/haliade-utils/README")
  end,
}
