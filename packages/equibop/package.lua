return {
  name    = "equibop",
  version = "3.2.2",
  summary = "Discord client mod (Equicord, Electron app)",
  url     = "https://github.com/gretagen/zeta-providence/releases/download/large-artifacts/equibop-3.2.2.tar.gz",
  sha256  = "0278949c8a5e0b387a4e5fed88f50559f213c9b540657f61d11282ed5b089117",
  deps    = { "glibc", "alsa-lib", "at-spi2-core", "cairo", "dbus", "expat", "glib", "gtk3", "gcc", "libX11", "libXcomposite", "libXdamage", "libXext", "libXfixes", "libXrandr", "libxcb", "libcups", "systemd-libs", "mesa-drivers", "nss", "pango", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/equibop")
  end,
}
