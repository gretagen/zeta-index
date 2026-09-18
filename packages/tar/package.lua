return {
  name    = "tar",
  version = "1.35",
  summary = "GNU tar: file archiver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tar/tar-1.35.tar.gz",
  sha256  = "7a6e844db0847bbc4464902cae59ec6b6d6c08a1605df42ac3f14e4c5956a97e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tar")
  end,
}
