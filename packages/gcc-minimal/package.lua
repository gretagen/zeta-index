return {
  name    = "gcc-minimal",
  version = "16.2.0",
  summary = "C-only GCC for building the kernel: driver, cc1, collect2, headers and link support (no C++, LTO or sanitizers)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gcc-minimal/gcc-minimal-16.2.0.tar.gz",
  sha256  = "b359b96cd8038158c821464c1cb1d1aed7b4a8246ee6b2db24e17193d47f7c68",
  -- glibc: cc1/collect2 NEEDED. libgcc + libatomic: what the gcc spec links
  -- (-lgcc_s / -latomic, reached through the two _asneeded ld scripts shipped
  -- here). zstd: cc1's libzstd.so.1 NEEDED.
  deps    = { "glibc", "libgcc", "libatomic", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gcc")
    p:run("test -x " .. p.install_root .. "/usr/libexec/gcc/x86_64-pc-linux-gnu/16.2.0/cc1")
    p:run("test -x " .. p.install_root .. "/usr/libexec/gcc/x86_64-pc-linux-gnu/16.2.0/collect2")
    p:run("test -f " .. p.install_root .. "/usr/lib/gcc/x86_64-pc-linux-gnu/16.2.0/libgcc.a")
    p:run("test -f " .. p.install_root .. "/usr/lib/gcc/x86_64-pc-linux-gnu/16.2.0/crtbegin.o")
    p:run("test -f " .. p.install_root .. "/usr/lib/libgcc_s_asneeded.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/libatomic_asneeded.so")
    -- must actually compile through the relocated subset. -c (not a full link)
    -- keeps this independent of libgcc_s.so/libatomic.so, which come from the
    -- libgcc and libatomic deps and are therefore not in the staging tree.
    p:run("printf 'int main(void){return 0;}' > /tmp/zeta-gccm.c && " ..
          p.install_root .. "/usr/bin/gcc -c -o /tmp/zeta-gccm.o /tmp/zeta-gccm.c && " ..
          "test -s /tmp/zeta-gccm.o && rm -f /tmp/zeta-gccm.o /tmp/zeta-gccm.c")
    -- and the heavy half of gcc must be absent
    p:run("! test -e " .. p.install_root .. "/usr/libexec/gcc/x86_64-pc-linux-gnu/16.2.0/cc1plus")
    p:run("! test -e " .. p.install_root .. "/usr/libexec/gcc/x86_64-pc-linux-gnu/16.2.0/lto1")
    p:run("! test -x " .. p.install_root .. "/usr/bin/g++")
  end,
}
