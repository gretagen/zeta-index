return {
  name    = "libdecor",
  version = "0.2.5-1-x86_64",
  summary = "Client-side window decoration library for Wayland (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libdecor/libdecor-0.2.5-1-x86_64.pkg.tar.zst",
  sha256  = "79fb92af5bf5358da4dc418fc784554284c09cdf4e8aa2cdc95197752d1df115",
  deps    = { "dbus", "pango", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libdecor-0.so.0")
  end,
}
