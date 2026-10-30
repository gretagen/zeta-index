return {
  name    = "mailcap",
  version = "2.1.54-3-any",
  summary = "helper application and MIME type associations for file types",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mailcap/mailcap-2.1.54-3-any.pkg.tar.zst",
  sha256  = "91d5c7a0583514f6398a1fff3abf71abd3d116f310c8a2ec81594c1ddc8bcbcf",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/licenses/mailcap/COPYING")
  end,
}
