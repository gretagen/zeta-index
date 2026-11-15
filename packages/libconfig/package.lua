return {
  name    = "libconfig",
  version = "1.8.3",
  summary = "Configuration file processing library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libconfig/libconfig-1.8.3.tar.gz",
  sha256  = "42d4802e56bbc7b3ededcac784dd1ec82f3eb319e8f97be74638096a0ad2697e",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libconfig.so && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libconfig.pc && test -f " .. p.install_root .. "/usr/include/libconfig.h && printf '#include <libconfig.h>\\nint main(){config_t c; config_init(&c); config_destroy(&c); return 0;}\\n' > /tmp/libconfig-smoke.c && gcc /tmp/libconfig-smoke.c -I" .. p.install_root .. "/usr/include -Wl,-rpath," .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/lib/libconfig.so -o /tmp/libconfig-smoke && /tmp/libconfig-smoke")
  end,
}
