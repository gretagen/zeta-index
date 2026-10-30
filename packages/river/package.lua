return {
  name    = "river",
  version = "0.5.0-1-x86_64",
  summary = "Dynamic tiling Wayland compositor (wlroots)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/river/river-0.5.0-1-x86_64.pkg.tar.zst",
  sha256  = "9c35fb770b59ba0ba8cd9532010796148bd72ed120228863a2b1cdd17275faed",
  deps    = { "glibc", "libevdev", "libinput", "xkbcommon", "pixman", "wayland", "wlroots", "xwayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/river")
  end,
}
