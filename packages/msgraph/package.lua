return {
  name    = "msgraph",
  version = "0.3.5-1-x86_64",
  summary = "a shared library for accessing MS Graph API",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/msgraph/msgraph-0.3.5-1-x86_64.pkg.tar.zst",
  sha256  = "233f83a061e1b4915a26911962f756bdab7169f72cf3e8757739cdebfbf80394",
  deps    = { "glib", "glibc", "libjson-glib", "libgcc", "libgoa", "libsoup3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmsgraph-1.so.0.3.5")
  end,
}
