return {
  name    = "git-lfs",
  version = "3.8.1",
  summary = "Git extension for versioning large files (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/git-lfs/git-lfs-3.8.1.tar.gz",
  sha256  = "ea6fb55d864bfe8b08222667becffd73487a17513f552549a79bde03b129f16b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/git-lfs")
  end,
}
