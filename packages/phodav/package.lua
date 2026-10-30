return {
  name    = "phodav",
  version = "3.1-1-x86_64",
  summary = "webDav server implementation using libsoup (RFC 4918)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/phodav/phodav-3.1-1-x86_64.pkg.tar.zst",
  sha256  = "dd69be2cf517a93106afb66e1b5fded10e4d08ac04294ba3cb650c4d45a8426f",
  deps    = { "avahi", "glib", "glibc", "libgcc", "libsoup3", "libxml2", "systemd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libphodav-3.0.so.0.0.0")
  end,
}
