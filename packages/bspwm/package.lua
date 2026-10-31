return {
  name    = "bspwm",
  version = "0.9.12-1-x86_64",
  summary = "Tiling window manager based on binary space partitioning",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/bspwm/bspwm-0.9.12-1-x86_64.pkg.tar.zst",
  sha256  = "c88937dd67ac0399219ee865e088b4ff7616b64a8f8798a8489e81b6812e4e67",
  deps    = { "glibc", "bash", "libxcb", "xcb-util", "xcb-util-keysyms", "xcb-util-wm" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bspwm")
  end,
}
