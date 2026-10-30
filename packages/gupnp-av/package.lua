return {
  name    = "gupnp-av",
  version = "0.14.5-1-x86_64",
  summary = "library to ease handling and implementation of UPnP A/V profiles",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gupnp-av/gupnp-av-0.14.5-1-x86_64.pkg.tar.zst",
  sha256  = "56fe0988ea3a8548f5b7abe9b3c91a5600de7ef6ca768b53aa4a97133b9eb4b4",
  deps    = { "glib", "glibc", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgupnp-av-1.0.so.3.14.5")
  end,
}
