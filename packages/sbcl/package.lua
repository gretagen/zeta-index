return {
  name    = "sbcl",
  version = "2.6.9-1-x86_64",
  summary = "steel Bank Common Lisp",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sbcl/sbcl-2.6.9-1-x86_64.pkg.tar.zst",
  sha256  = "8e6c4de0edffe39c4a96971eaab2b7cc3d8fd002f50e062658e922690dadb278",
  deps    = { "libz", "zstd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/sbcl")
  end,
}
