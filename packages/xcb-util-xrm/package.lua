return {
  name    = "xcb-util-xrm",
  version = "1.3-4-x86_64",
  summary = "xCB utility functions for the X resource manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xcb-util-xrm/xcb-util-xrm-1.3-4-x86_64.pkg.tar.zst",
  sha256  = "bbdbb612d813f29f928cbca243b2fe888361e1005e019cf4edb73af091b1b6d2",
  deps    = { "xcb-util" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxcb-xrm.so.0.0.0")
  end,
}
