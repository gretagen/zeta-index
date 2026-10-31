return {
  name    = "screen",
  version = "5.0.2-2-x86_64",
  summary = "Full-screen window manager / terminal multiplexer (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/screen/screen-5.0.2-2-x86_64.pkg.tar.zst",
  sha256  = "29549ef3b8e3ad472a526f6ebd112ea1c4e7289642902cd182c3bdcb83c278c1",
  deps    = { "ncurses", "pam", "libutempter", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/screen")
  end,
}
