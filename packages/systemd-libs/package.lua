return {
  name    = "systemd-libs",
  version = "262",
  summary = "systemd libraries (libsystemd, libudev)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/systemd-libs/systemd-libs-262.tar.gz",
  sha256  = "21206e60d8c42a8b141906254d6541cb382ac1ad39ef36d83ad1ff13dd09a842",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -e " .. r .. "/usr/lib/libsystemd.so.0"
      .. " && test -e " .. r .. "/usr/lib/libudev.so.1"
      .. " && test -e " .. r .. "/usr/lib/pkgconfig/libsystemd.pc"
      .. " && ! test -e " .. r .. "/usr/bin/systemctl")
  end,
}
