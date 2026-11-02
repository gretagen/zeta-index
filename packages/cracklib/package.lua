return {
  name    = "cracklib",
  version = "2.10.4",
  summary = "Password-strength checking library and word list",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cracklib/cracklib-2.10.4.tar.gz",
  sha256  = "c7762a6adac8a149b0a00b21d5b43342ce33851cbf82e2ac092790716502390a",
  deps    = { "glibc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcrack.so.2 && test -x " .. p.install_root .. "/usr/sbin/create-cracklib-dict && test -f " .. p.install_root .. "/usr/share/dict/cracklib-words && test -f " .. p.install_root .. "/usr/include/crack.h")
  end,
}
