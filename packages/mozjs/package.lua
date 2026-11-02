return {
  name    = "mozjs",
  version = "140.17.0",
  summary = "Mozilla JavaScript engine (SpiderMonkey) for gjs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mozjs/mozjs-140.17.0.tar.gz",
  sha256  = "c860b9ba454596dc7d9c050efffa78140185326e5b81558fa68ca730a2a37477",
  deps    = { "glibc", "icu", "readline", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmozjs-140.so && test -f " .. p.install_root .. "/usr/include/mozjs-140/js-config.h && grep -q XP_UNIX " .. p.install_root .. "/usr/include/mozjs-140/js-config.h && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists mozjs-140 && test -x " .. p.install_root .. "/usr/bin/js140 && " .. p.install_root .. "/usr/bin/js140 -e 'print(40+2)' | grep -q 42")
  end,
}
