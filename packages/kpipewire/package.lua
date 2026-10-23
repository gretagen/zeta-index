return {
  name    = "kpipewire",
  version = "6.3.6",
  summary = "KDE: Components relating to Flatpak 'pipewire' use in Plasma.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kpipewire/kpipewire-6.3.6.tar.gz",
  sha256  = "d698443de3de69de89bc99c032e67642cfc14887402646f189ea72a835e8b9fa",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtwayland", "kcoreaddons", "ki18n", "plasma-wayland-protocols", "wayland", "ffmpeg", "pipewire", "libva" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
