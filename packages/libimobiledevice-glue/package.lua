return {
  name    = "libimobiledevice-glue",
  version = "1.3.2-1-x86_64",
  summary = "a library with common code used by libraries and tools around the libimobiledevice project",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libimobiledevice-glue/libimobiledevice-glue-1.3.2-1-x86_64.pkg.tar.zst",
  sha256  = "f20da2280b05f04e9209ebf2ee88cb3a02868ae21b27679e077daa97251189b6",
  deps    = { "glibc", "libplist" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libimobiledevice-glue-1.0.so.0.3.2")
  end,
}
