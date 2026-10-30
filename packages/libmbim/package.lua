return {
  name    = "libmbim",
  version = "1.34.0-2-x86_64",
  summary = "mBIM modem protocol helper library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmbim/libmbim-1.34.0-2-x86_64.pkg.tar.zst",
  sha256  = "3a5f102da9350760424cb179d07c03e4b48883ff4297c9dc883f3a8910fea7e0",
  deps    = { "bash", "glib", "glibc", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmbim-glib.so.4.10.0")
  end,
}
