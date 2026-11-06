return {
  name    = "mcfly",
  version = "0.9.4",
  summary = "Neural shell history search (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mcfly/mcfly-0.9.4.tar.gz",
  sha256  = "bda8950384dcdd23cb235d2ae9b321a8d6c656928b5313839a727ec800a4c8d7",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mcfly")
  end,
}
