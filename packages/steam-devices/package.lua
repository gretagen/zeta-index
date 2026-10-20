return {
  name    = "steam-devices",
  version = "20260625",
  summary = "Steam and SteamVR device permissions (udev rules for flatpak Steam)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/steam-devices/steam-devices-20260625.tar.gz",
  sha256  = "d1abcd5e8c7e4e4d4e1e436b5d67532848dfafe4d21edc2c82791da7bd0f5f43",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/udev/rules.d/60-steam-input.rules && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/60-steam-vr.rules && grep -q '28de' " .. p.install_root .. "/usr/lib/udev/rules.d/60-steam-input.rules && grep -q 'uinput' " .. p.install_root .. "/usr/lib/udev/rules.d/60-steam-input.rules && test -f " .. p.install_root .. "/usr/share/licenses/steam-devices/LICENSE")
  end,
}
