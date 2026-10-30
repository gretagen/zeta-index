return {
  name    = "cl-unicode",
  version = "0.1.6.r12.g07e7ff5-1-any",
  summary = "unicode library for Common Lisp",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cl-unicode/cl-unicode-0.1.6.r12.g07e7ff5-1-any.pkg.tar.zst",
  sha256  = "535e2ac62ce8ff78dc07715a9bfa2267ac159d21db43239c77da865b36c0e744",
  deps    = { "cl-ppcre" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/common-lisp/source/cl-unicode/alias.lisp")
  end,
}
