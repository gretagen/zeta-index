return {
  name    = "chiaki-ng",
  version = "1.10.1",
  summary = "PlayStation Remote Play client (Qt GUI + CLI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/chiaki-ng/chiaki-ng-1.10.1.tar.gz",
  sha256  = "3867026ace0ac1d498602b88bb7da279f8479feb31a53ef8e9ed90804ae1837b",
  deps    = { "glibc", "gcc", "openssl", "opus", "ffmpeg", "qtbase", "qtsvg", "qtdeclarative", "sdl2", "libnotify", "libplacebo", "json-c", "speex", "libevent", "hidapi", "miniupnpc", "libpsl", "libssh2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chiaki && test -x " .. p.install_root .. "/usr/bin/chiaki-cli && test -f " .. p.install_root .. "/usr/share/applications/chiaking.desktop && test -f " .. p.install_root .. "/usr/share/icons/hicolor/512x512/apps/chiaking.png && " .. p.install_root .. "/usr/bin/chiaki-cli --help 2>&1 | grep -qiE 'usage|chiaki'")
  end,
}
