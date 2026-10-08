return {
  name    = "libgcc",
  version = "16.2.1",
  summary = "GCC runtime (libgcc_s.so.1 unwind support)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libgcc/libgcc-16.2.1.tar.gz",
  sha256  = "ecf272b70246c2ba03404fcf40dd031fbb33fb25b473713fbb2b956b56674a5e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgcc_s.so.1")
  end,
}
