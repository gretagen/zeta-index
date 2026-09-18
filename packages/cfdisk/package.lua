return {
  name    = "cfdisk",
  version = "2.42",
  summary = "Curses-based disk partition table editor (from util-linux)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cfdisk/cfdisk-2.42.tar.gz",
  sha256  = "cc39a98533a97e14c95409648cea775b377bddfa18272abc9c59d61300aa01eb",
  deps    = { "glibc", "util-linux", "ncurses", "readline" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/cfdisk && test -x " .. p.install_root .. "/usr/sbin/fdisk && test -x " .. p.install_root .. "/usr/sbin/sfdisk")
  end,
}
