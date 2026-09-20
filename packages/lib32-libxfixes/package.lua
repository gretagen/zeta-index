return {
  name    = "lib32-libxfixes",
  version = "6.0.2",
  summary = "X11 miscellaneous 'fixes' extension library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxfixes/lib32-libxfixes.pkg.tar.zst",
  sha256  = "e3e29d1fadb0fe59f00cace8a5ba4df95e06033f9094841c0e56bc7fdb3e21ff",
  deps    = { "lib32-libx11", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
