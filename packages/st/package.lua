return {
  name    = "st",
  version = "0.9.3",
  summary = "Suckless simple terminal (X11)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/st/st-0.9.3.tar.gz",
  sha256  = "eb659610fea9722d84d48847fb692125fd46afd07efd473826871c674d75af76",
  deps    = { "glibc", "libX11", "libXft", "libXrender", "fontconfig", "freetype", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/st && " .. p.install_root .. "/usr/bin/st -v 2>&1 | grep -q 0.9.3 && test -f " .. p.install_root .. "/usr/share/man/man1/st.1 && find " .. p.install_root .. "/usr/share/terminfo -name st-256color | grep -q .")
  end,
}
