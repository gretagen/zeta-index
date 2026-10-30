return {
  name    = "sxhkd",
  version = "0.6.3-1-x86_64",
  summary = "simple X hotkey daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sxhkd/sxhkd-0.6.3-1-x86_64.pkg.tar.zst",
  sha256  = "455ce2c348abc15ff6c82d1e4d8ca08eb5c4de7c702a9c76b77ea0bf9c7b6202",
  deps    = { "xcb-util-keysyms" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/sxhkd")
  end,
}
