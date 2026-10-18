return {
  name    = "inih",
  version = "r62",
  summary = "Simple .INI file parser library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/inih/inih-r62.tar.gz",
  sha256  = "caf9ed8a3f9dc57f66e6947959f7050a156bb28e7a9d98fb15d73d642ec61388",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/inih.pc && ls " .. p.install_root .. "/usr/lib/libinih.so* >/dev/null && test -f " .. p.install_root .. "/usr/include/ini.h")
  end,
}
