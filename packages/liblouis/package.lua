return {
  name    = "liblouis",
  version = "3.39.0-1-x86_64",
  summary = "braille translator and back-translator library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/liblouis/liblouis-3.39.0-1-x86_64.pkg.tar.zst",
  sha256  = "38358ec943d0390e7cea6a2bfe75f10227051a417e5b8472ecc21a788e43470b",
  deps    = { "glibc", "libyaml" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblouis.so.20.1.4")
  end,
}
