return {
  name    = "osinfo-db",
  version = "20260812-1-any",
  summary = "osinfo database of information about operating systems for virtualization provisioning tools",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/osinfo-db/osinfo-db-20260812-1-any.pkg.tar.zst",
  sha256  = "f39665d3b2f1e8ebe3a003bc0a9ce97827f04c2c14e155df7846c6e742a30e40",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/osinfo/LICENSE")
  end,
}
