return {
  name    = "polybar",
  version = "3.7.2-3-x86_64",
  summary = "a fast and easy-to-use status bar",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/polybar/polybar-3.7.2-3-x86_64.pkg.tar.zst",
  sha256  = "c51424ca84500f4e03e055433578937fcb32916f465642bcf39612d79796b16d",
  deps    = { "libuv", "cairo", "xcb-util-image", "xcb-util-wm", "xcb-util-xrm", "xcb-util-cursor", "alsa-lib", "libpulse", "libmpdclient", "libnl", "jsoncpp", "curl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/polybar")
  end,
}
