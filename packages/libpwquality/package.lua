return {
  name    = "libpwquality",
  version = "1.4.5",
  summary = "Password quality checking and generation library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libpwquality/libpwquality-1.4.5.tar.gz",
  sha256  = "822cad55e018ffcc5b9085f4cc148b5d6dbf2fbe658c14378db034e718a072fe",
  deps    = { "glibc", "cracklib", "pam" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpwquality.so.1 && test -x " .. p.install_root .. "/usr/bin/pwmake && test -f " .. p.install_root .. "/usr/include/pwquality.h")
  end,
}
