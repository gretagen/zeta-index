return {
  name    = "gssdp",
  version = "1.6.6-1-x86_64",
  summary = "gObject-based API for handling resource discovery and announcement over SSDP",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gssdp/gssdp-1.6.6-1-x86_64.pkg.tar.zst",
  sha256  = "1b03fff2f98f39e973f91c06773e2bf0c9ad22316b68bf13fa1e9cd8041f39d4",
  deps    = { "glib", "glibc", "libgcc", "libsoup3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgssdp-1.6.so.0.106.6")
  end,
}
