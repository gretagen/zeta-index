return {
  name    = "cl-clx",
  version = "0.7.8-1-any",
  summary = "an implementation of the X Window System protocol in Common Lisp",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cl-clx/cl-clx-0.7.8-1-any.pkg.tar.zst",
  sha256  = "7bb2aee3e18f53f16345787ec1d01c711ca4f24ad4c6f8436a288fefe3273e11",
  deps    = { "xorg-server" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/common-lisp/source/clx/attributes.lisp")
  end,
}
