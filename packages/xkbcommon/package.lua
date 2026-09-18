return {
  name    = "xkbcommon",
  version = "1.13.2",
  summary = "Keyboard keymap compiler and support library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xkbcommon/xkbcommon-1.13.2.tar.gz",
  sha256  = "5d0183aa619dce00b453c2cbaea3eacf462c42dba38b0caef1df03bae7105383",
  deps    = { "glibc", "libxcb", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxkbcommon.so.0 -a -e " .. p.install_root .. "/usr/lib/libxkbcommon-x11.so.0")
  end,
}
