return {
  name    = "manual",
  version = "1.0.3",
  summary = "Haliade system manual as a command (manual)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/manual/manual-1.0.3.tar.gz",
  sha256  = "19a6832381a632726970c99f6a63ffc5caf04849554f5ffeda0a3720541d184f",
  deps    = { "bash", "ncurses", "uutils-coreutils", "xdg-utils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/manual && test -f " .. p.install_root .. "/usr/share/manual/cover.txt && test -f " .. p.install_root .. "/usr/share/manual/15-end.txt && test -f " .. p.install_root .. "/usr/share/manual/03-installation.txt && test -f " .. p.install_root .. "/usr/share/manual/14-package-writing.txt && " .. p.install_root .. "/usr/bin/manual 2>&1 | grep -q 'interactive terminal' && test -x " .. p.install_root .. "/usr/bin/manual-gui && grep -q xdg-open " .. p.install_root .. "/usr/bin/manual-gui && test -f " .. p.install_root .. "/usr/share/applications/manual.desktop && grep -q '^Exec=manual-gui' " .. p.install_root .. "/usr/share/applications/manual.desktop && grep -q '^Icon=haliade-manual' " .. p.install_root .. "/usr/share/applications/manual.desktop && ! grep -q '<<<<<<<' " .. p.install_root .. "/usr/share/applications/manual.desktop && test -f " .. p.install_root .. "/usr/share/pixmaps/haliade-manual.png")
  end,
}
