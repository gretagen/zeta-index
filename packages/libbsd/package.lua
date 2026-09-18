return {
  name    = "libbsd",
  version = "0.12.2",
  summary = "BSD library of useful functions (arc4random, strlcpy, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libbsd/libbsd-0.12.2.tar.gz",
  sha256  = "7cbd9626557b34e8092f060c51c7097b55a971465de54e8e22be8a2f7be0b016",
  deps    = { "glibc", "libmd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libbsd.so.0")
  end,
}
