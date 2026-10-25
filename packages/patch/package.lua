return {
  name    = "patch",
  version = "2.8.1",
  summary = "Patching utility (GNU patch)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/patch/patch-2.8.1.tar.gz",
  sha256  = "fbca0034a9bf7064b0761f39d310fd246ebe69ae8404a3f4a251f17d209395be",
  deps    = { "glibc", "attr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/patch && " .. p.install_root .. "/usr/bin/patch --version | grep -q 2.8.1")
  end,
}
