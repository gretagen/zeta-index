return {
  name    = "cl-alexandria",
  version = "1.4.r37.g390a096-1-any",
  summary = "a set of Common Lisp Utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cl-alexandria/cl-alexandria-1.4.r37.g390a096-1-any.pkg.tar.zst",
  sha256  = "5918550fcb6507d1ef114442327670aaa4c51667d24877da28a461a7831405e8",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/common-lisp/source/alexandria/alexandria-1/arrays.lisp")
  end,
}
