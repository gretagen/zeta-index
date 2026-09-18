return {
  name    = "xorriso",
  version = "1.5.8.2",
  summary = "ISO 9660 Rock Ridge filesystem manipulator and burn program",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xorriso/xorriso-1.5.8.2.tar.gz",
  sha256  = "130d59e99e6123340664746050a16404ba7a7f255d3b0d0bdf43f9bc278dd441",
  deps    = { "glibc", "libburn", "libisofs", "libisoburn", "libz", "acl", "readline", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xorriso && ldd " .. p.install_root .. "/usr/bin/xorriso | grep -q libisoburn")
  end,
}
