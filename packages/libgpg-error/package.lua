return {
  name    = "libgpg-error",
  version = "1.61",
  summary = "Library defining common GnuPG error values",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgpg-error/libgpg-error-1.61.tar.gz",
  sha256  = "f901f68f37365ba8af48c05844c404ecc8fece32214824757b01b6a719a29ddc",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgpg-error.so.0")
  end,
}
