return {
  name    = "cloc",
  version = "2.10-1-any",
  summary = "Count lines of code in many languages (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cloc/cloc-2.10-1-any.pkg.tar.zst",
  sha256  = "ef69ee55e0f1d6a4a276e570ecbf9dbf307201561048928b2b689d578376b794",
  deps    = { "perl", "perl-algorithm-diff", "perl-parallel-forkmanager", "perl-regexp-common" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cloc")
  end,
}
