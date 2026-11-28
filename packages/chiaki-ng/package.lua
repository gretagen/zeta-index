return {
  name    = "chiaki-ng",
  version = "1.10.1",
  summary = "PlayStation Remote Play client (Qt GUI + CLI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chiaki-ng/chiaki-ng-1.10.1.tar.gz",
  sha256  = "f4051db0b33d11e9002a0bff71dc5904014daf93c3a0afacd88b811a3cef4560",
  deps    = { "glibc", "gcc", "openssl", "opus", "ffmpeg", "qtbase", "qtsvg", "qtdeclarative", "SDL2", "libnotify", "libplacebo", "json-c", "speex", "libevent", "hidapi", "miniupnpc", "libpsl", "libssh2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chiaki && test -x " .. p.install_root .. "/usr/bin/chiaki-cli && test -f " .. p.install_root .. "/usr/share/applications/chiaking.desktop && test -f " .. p.install_root .. "/usr/share/icons/hicolor/512x512/apps/chiaking.png && " .. p.install_root .. "/usr/bin/chiaki-cli --help 2>&1 | grep -qiE 'usage|chiaki'")
  end,
}
