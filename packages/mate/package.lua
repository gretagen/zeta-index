return {
  name    = "mate",
  version = "1.29",
  summary = "MATE desktop group (meta-package)",
  deps    = { "caja", "marco", "mate-panel", "mate-session-manager", "mate-settings-daemon", "mate-control-center", "mate-power-manager", "mate-polkit", "mate-menus", "mate-desktop", "mate-notification-daemon", "mate-terminal", "mate-backgrounds", "mate-calc", "mate-utils", "eom", "pluma", "libmatekbd", "libmateweather", "libgtop", "libpeas", "gsettings-desktop-schemas", "gtk3", "mate-icon-theme", "adwaita-icon-theme", "mate-applets", "mate-media", "mate-netbook", "mate-screensaver", "mate-sensors-applet", "mate-themes", "mate-user-share", "mozo", "engrampa", "atril" },
  install = function(p)
    -- Install start-mate session launcher (handles dbus + XDG vars)
    local bin_dir = p.install_root .. "/usr/bin"
    p:run("mkdir -p " .. bin_dir)
    p:run("cat > " .. bin_dir .. "/start-mate <<'STARTEOF'\n#!/bin/sh\n# MATE session launcher for Haliade OS\n# Launches dbus session bus if needed, sets XDG vars, starts mate-session\n\nif [ -z \"$XDG_DATA_DIRS\" ]; then\n  export XDG_DATA_DIRS=\"/usr/local/share:/usr/share\"\nfi\n\nif [ -z \"$XDG_CONFIG_DIRS\" ]; then\n  export XDG_CONFIG_DIRS=\"/etc/xdg\"\nfi\n\nif [ -z \"$DBUS_SESSION_BUS_ADDRESS\" ]; then\n  if [ -z \"$XDG_RUNTIME_DIR\" ] || ! [ -S \"$XDG_RUNTIME_DIR/bus\" ] || ! [ -O \"$XDG_RUNTIME_DIR/bus\" ]; then\n    eval \"$(dbus-launch --sh-syntax --exit-with-session)\"\n  fi\nfi\n\nexport XDG_CURRENT_DESKTOP=MATE\nexport XDG_MENU_PREFIX=mate-\n\nexec mate-session\nSTARTEOF")
    p:run("chmod +x " .. bin_dir .. "/start-mate")

    -- Install session file for display managers / xinit
    local xsessions_dir = p.install_root .. "/usr/share/xsessions"
    p:run("mkdir -p " .. xsessions_dir)
    p:run("cat > " .. xsessions_dir .. "/mate.desktop <<'DTEOF'\n[Desktop Entry]\nName=MATE\nComment=MATE Desktop Environment\nExec=start-mate\nType=Application\nDesktopNames=MATE\nDTEOF")

    -- Create 'menta' icon theme symlink → Adwaita (fallback for default icon-theme)
    local icons_dir = p.install_root .. "/usr/share/icons"
    p:run("mkdir -p " .. icons_dir)
    p:run("ln -sfn Adwaita " .. icons_dir .. "/menta 2>/dev/null || true")
  end,
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/start-mate")
    p:run("test -f " .. p.install_root .. "/usr/share/xsessions/mate.desktop")
  end,
}
