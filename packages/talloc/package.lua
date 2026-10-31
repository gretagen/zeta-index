return {
  name    = "talloc",
  version = "2.5.0-2-x86_64",
  summary = "Hierarchical pool based memory allocator (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/talloc/talloc-2.5.0-2-x86_64.pkg.tar.zst",
  sha256  = "8209c935210ab9ce983afa271acd3504a8df2f272f11f66cbdc72b1d339f8529",
  deps    = { "glibc", "libbsd", "libxcrypt" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libtalloc.so.2")
  end,
}
