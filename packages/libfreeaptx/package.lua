return {
  name    = "libfreeaptx",
  version = "0.2.2-1-x86_64",
  summary = "open Source aptX codec library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libfreeaptx/libfreeaptx-0.2.2-1-x86_64.pkg.tar.zst",
  sha256  = "bd6c02fce728512a27e6ef3a06cc42ecdd12ec3915d29b80a41ea14f247c13ff",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libfreeaptx.so.0.2.2")
  end,
}
