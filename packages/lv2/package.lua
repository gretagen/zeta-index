return {
  name    = "lv2",
  version = "1.18.10-2-x86_64",
  summary = "plugin standard for audio systems",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lv2/lv2-1.18.10-2-x86_64.pkg.tar.zst",
  sha256  = "82ad14877273ea4b06289e9bdb9a8241646c511eb9b1747e79413b6b24a9a3c5",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/lv2_validate")
  end,
}
