return {
  name    = "binutils",
  version = "2.47",
  summary = "GNU Binutils - assembler, linker and binary tools (as, ld, objdump, nm, ar, strip)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/binutils/binutils-2.47.tar.gz",
  sha256  = "43d9edbb7a86992e78465753a704f9d79b86b391c17762dfdfb596f473b37d96",
  deps    = { "glibc", "libz", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ld -a -x " .. p.install_root .. "/usr/bin/as -a -x " .. p.install_root .. "/usr/bin/objdump && printf 'main:\\n\\tret\\n' | " .. p.install_root .. "/usr/bin/as -o /tmp/zeta-as-test.o && " .. p.install_root .. "/usr/bin/ld -o /tmp/zeta-ld-test /tmp/zeta-as-test.o && test -x /tmp/zeta-ld-test && rm -f /tmp/zeta-as-test.o /tmp/zeta-ld-test")
  end,
}
