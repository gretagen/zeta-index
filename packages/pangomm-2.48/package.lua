return {
  name    = "pangomm-2.48",
  version = "2.58.0-1-x86_64",
  summary = "c++ bindings for Pango",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/pangomm-2.48/pangomm-2.48-2.58.0-1-x86_64.pkg.tar.zst",
  sha256  = "eb88786a273c8ddf364276c5042af7c88fe427dbb9080f8aa886937668280081",
  deps    = { "cairomm-1.16", "glib", "glibc", "glibmm-2.68", "libgcc", "libsigc++-3.0", "libstdc++", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpangomm-2.48.so.1.0.30")
  end,
}
