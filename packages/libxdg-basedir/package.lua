return {
  name    = "libxdg-basedir",
  version = "1.2.3-3-x86_64",
  summary = "an implementation of the XDG Base Directory specification",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libxdg-basedir/libxdg-basedir-1.2.3-3-x86_64.pkg.tar.zst",
  sha256  = "957158877eff09878e995846e0b4c0990ba09c28710b447b653b661658e9ec5b",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxdg-basedir.so.1.2.0")
  end,
}
