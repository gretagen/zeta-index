return {
  name    = "discord",
  version = "1.0.157",
  summary = "Discord (stable Electron client)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-providence/refs/heads/main/discord/discord-1.0.157.deb",
  sha256  = "ed8773b0b85838dc8e18ec2317ac55bdc6fc7b6af0cc46109ceba002764ffbaa",
  deps    = { "glibc", "libatomic", "libnotify", "alsa-lib", "at-spi2-core", "cairo", "expat", "glib", "gtk3", "libX11", "libXcomposite", "libXdamage", "libXext", "libXfixes", "libXrandr", "libXrender", "libxss", "libXtst", "libxcb", "mesa-drivers", "nss", "pango", "pulseaudio", "wayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/discord")
  end,
}
