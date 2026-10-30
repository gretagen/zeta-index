return {
  name    = "confuse",
  version = "3.4-1-x86_64",
  summary = "small configuration file parser library for C",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/confuse/confuse-3.4-1-x86_64.pkg.tar.zst",
  sha256  = "b0cb8148722a0b48974c9c79c0605d4e1b105b3499634ba5505dda9569575d01",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libconfuse.so.2.2.0")
  end,
}
