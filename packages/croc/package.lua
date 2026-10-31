return {
  name    = "croc",
  version = "11.6.0",
  summary = "Easily and securely send files between computers (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/croc/croc-11.6.0.tar.gz",
  sha256  = "e0ba0cabfa78486a270ebd509abd7657f0365f5a74d7e7dde7f56e0bf922cafb",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/croc")
  end,
}
