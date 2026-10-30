return {
  name    = "cl-ppcre",
  version = "2.1.2-1-any",
  summary = "perl-compatible portable regexp library for Common Lisp",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cl-ppcre/cl-ppcre-2.1.2-1-any.pkg.tar.zst",
  sha256  = "7031bea15dacbd03820829929e3b3542f28da220837132f31077e7e13b3dbdbf",
  deps    = { "cl-unicode" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/common-lisp/source/cl-ppcre/api.lisp")
  end,
}
