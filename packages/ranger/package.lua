return {
  name    = "ranger",
  version = "1.9.4-5-any",
  summary = "Console file manager with VI key bindings (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ranger/ranger-1.9.4-5-any.pkg.tar.zst",
  sha256  = "deea1dec8ace6f0e61ad9dd80aa68a34e8af03bde9a1cfeced296eef2a8db0be",
  deps    = { "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ranger")
  end,
}
