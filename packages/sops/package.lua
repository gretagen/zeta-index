return {
  name    = "sops",
  version = "3.13.3",
  summary = "Editor of encrypted files (secrets management) (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sops/sops-3.13.3.tar.gz",
  sha256  = "c975db97da5a74fc700cae497004af3e3cf525f73e026b1e43c109d705ade592",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sops")
  end,
}
