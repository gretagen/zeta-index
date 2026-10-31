return {
  name    = "sfsexp",
  version = "1.4.1-2-x86_64",
  summary = "Small fast S-expression library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sfsexp/sfsexp-1.4.1-2-x86_64.pkg.tar.zst",
  sha256  = "da0735c34187ded7563d453ece2a053d45b7f8e36c26501f0d96a70aa89493a2",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsexp.so.1")
  end,
}
