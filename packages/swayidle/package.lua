return {
  name    = "swayidle",
  version = "1.9.1-1-x86_64",
  summary = "idle management daemon for Wayland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/swayidle/swayidle-1.9.1-1-x86_64.pkg.tar.zst",
  sha256  = "01c193658e2fb5e46b0b08d6966bf952bf86125c7332fd5acf9a94cd5ce23def",
  deps    = { "wayland", "systemd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/swayidle")
  end,
}
