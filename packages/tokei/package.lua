return {
  name    = "tokei",
  version = "15.0.0-1-x86_64",
  summary = "Count lines of code quickly (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/tokei/tokei-15.0.0-1-x86_64.pkg.tar.zst",
  sha256  = "12643308f75b3eeb0873cdfead7ea86c5c6e6b4f92419d7f0f252a2cf326bfdd",
  deps    = { "glibc", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tokei")
  end,
}
