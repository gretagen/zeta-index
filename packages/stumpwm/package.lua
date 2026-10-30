return {
  name    = "stumpwm",
  version = "24.11-18-x86_64",
  summary = "tiling, keyboard-driven window manager written in Common Lisp",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/stumpwm/stumpwm-24.11-18-x86_64.pkg.tar.zst",
  sha256  = "c817c40203ccd8972d33b6472c923725638bf41d7f55a3e1384d3672b04b40d8",
  deps    = { "glibc", "zstd", "sbcl", "cl-ppcre", "cl-clx", "cl-alexandria" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/stumpwm")
  end,
}
