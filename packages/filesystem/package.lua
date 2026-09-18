return {
  name    = "filesystem",
  version = "1.0",
  summary = "Haliade OS base filesystem hierarchy (FHS)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/filesystem/filesystem-1.0.tar.gz",
  sha256  = "0b4db05f760ad0a11361606e1b8ff3e7ae7d18e63ca19076bbce0eff326871ba",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr && test -d " .. p.install_root .. "/etc && test -L " .. p.install_root .. "/bin")
  end,
}
