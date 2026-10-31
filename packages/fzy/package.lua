return {
  name    = "fzy",
  version = "1.1-1-x86_64",
  summary = "A simple fuzzy text selector for the terminal (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fzy/fzy-1.1-1-x86_64.pkg.tar.zst",
  sha256  = "77dde744ff88236fc75626337190d515b8060f599acb06eeb2b9ce90ce29acc6",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fzy")
  end,
}
