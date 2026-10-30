return {
  name    = "hyprshot",
  version = "1.3.0-4-any",
  summary = "hyprland screenshot utility",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/hyprshot/hyprshot-1.3.0-4-any.pkg.tar.zst",
  sha256  = "1c3b07d148f5e465ee540334b045f1662291393c88b049288cbb607f74ff8db8",
  deps    = { "bash", "grim", "jq", "libnotify", "slurp", "wl-clipboard" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/hyprshot")
  end,
}
