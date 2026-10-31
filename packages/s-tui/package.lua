return {
  name    = "s-tui",
  version = "1.5.0-1-any",
  summary = "Terminal-based CPU stress and monitoring utility (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/s-tui/s-tui-1.5.0-1-any.pkg.tar.zst",
  sha256  = "01ab1aa5589b9cbc130c90750c38cfb6fdd52cfd325788d6c050c25436914169",
  deps    = { "python", "python-psutil", "python-urwid", "stress" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/s-tui")
  end,
}
