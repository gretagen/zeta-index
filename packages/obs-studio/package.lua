return {
  name    = "obs-studio",
  version = "33.0.1",
  summary = "Open Broadcaster Software — live streaming and screen recording",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/obs-studio/obs-studio-33.0.1.tar.gz",
  sha256  = "31fc1a6f85f64b044bbc79f3fc6920c116cf3c432c94f3b701a5f1d82435b1fe",
  deps    = { "glibc", "ffmpeg", "jansson", "nlohmann-json", "curl", "openssl", "pulseaudio", "pipewire", "libva", "libdrm", "xkbcommon", "wayland", "sndio", "luajit", "libuuid", "speexdsp", "vlc", "qtsvg", "libdatachannel", "mbedtls", "pciutils", "qrcodegencpp", "librist" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/obs && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib QT_QPA_PLATFORM=offscreen " .. p.install_root .. "/usr/bin/obs --version | grep -q '33.0.1' && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib QT_QPA_PLATFORM=offscreen " .. p.install_root .. "/usr/bin/obs --help | grep -q 'startstreaming' && test -d " .. p.install_root .. "/usr/share/obs")
  end,
}
