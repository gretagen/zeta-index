return {
  name    = "waypaper",
  version = "2.9",
  summary = "GUI wallpaper setter for Wayland and Xorg window managers",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/waypaper/waypaper-2.9.tar.gz",
  sha256  = "fc64a0d3f4be0af6502b32d6a840e76b86816d3c73f19ce8682d52c2fdeaafbf",
  deps    = { "python", "python-gobject", "gtk3", "python-pillow", "python-platformdirs", "python-imageio", "python-imageio-ffmpeg", "python-screeninfo" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import waypaper.common, waypaper.config\" && test -x " .. p.install_root .. "/usr/bin/waypaper && test -x " .. p.install_root .. "/usr/bin/waypaperd && test -f " .. p.install_root .. "/usr/share/applications/waypaper.desktop")
  end,
}
