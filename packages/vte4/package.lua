return {
  name    = "vte4",
  version = "0.84.1-1-x86_64",
  summary = "virtual Terminal Emulator widget (GTK4)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/vte4/vte4-0.84.1-1-x86_64.pkg.tar.zst",
  sha256  = "de608aaf011c270a7eb81429620c116e96a8d3992a0a880c8df2e84495d15792",
  deps    = { "cairo", "fribidi", "glib", "glibc", "gnutls", "icu", "libgcc", "libstdc++", "lz4", "pango", "pcre2", "systemd", "systemd-libs", "graphene", "gtk4", "vte-common" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libvte-2.91-gtk4.so.0")
  end,
}
