return {
  name    = "libtheora",
  version = "2.2.1",
  summary = "Theora video codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libtheora/libtheora-2.2.1.tar.gz",
  sha256  = "aabe1cc23336a4057c3b91945042292b37893e9173745a931ee676726a3fa129",
  deps    = { "glibc", "libogg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtheora.so.1")
  end,
}
