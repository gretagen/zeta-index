return {
  name    = "weechat",
  version = "4.10.1",
  summary = "Extensible chat client (IRC, Matrix, …) for the terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/weechat/weechat-4.10.1.tar.gz",
  sha256  = "745d7fec54429fdc70e4f77cf797c5ddb419b6ff0d03a0c55c7d649c62a0a39a",
  deps    = { "glibc", "ncurses", "curl", "gnutls", "zstd", "cjson", "libgcrypt", "python", "lua" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/weechat && test -x " .. p.install_root .. "/usr/bin/weechat-headless && " .. p.install_root .. "/usr/bin/weechat --version | grep -q 4.10.1 && readelf -d " .. p.install_root .. "/usr/bin/weechat | grep -q libcurl && readelf -d " .. p.install_root .. "/usr/bin/weechat | grep -q libgnutls && readelf -d " .. p.install_root .. "/usr/bin/weechat | grep -q libncurses")
  end,
}
