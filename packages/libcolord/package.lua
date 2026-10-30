return {
  name    = "libcolord",
  version = "1.4.8-2-x86_64",
  summary = "Color management library (colord)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcolord/libcolord-1.4.8-2-x86_64.pkg.tar.zst",
  sha256  = "6e703e71970d735779a4dbecff603abf75b4289ed34bdbf5645146dba28ae6ad",
  deps    = { "glib", "glibc", "lcms2", "libgcc", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcolord.so")
  end,
}
