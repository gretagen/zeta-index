return {
  name    = "linux-libc-headers",
  version = "7.1.10",
  summary = "Kernel UAPI headers for userspace builds (linux, asm, asm-generic...)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/linux-libc-headers/linux-libc-headers-7.1.10.tar.gz",
  sha256  = "85ff5ae16bc1443defd0beb5700a592d48d8de0568d7d9e7eb2d377a22c8c95c",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/linux/errno.h -a -f " .. p.install_root .. "/usr/include/linux/version.h -a -f " .. p.install_root .. "/usr/include/asm/errno.h && printf '#include <linux/errno.h>\\n#include <asm/errno.h>\\nint main(void){return 0;}\\n' > /tmp/zeta-hdr-test.c && gcc -I" .. p.install_root .. "/usr/include -c /tmp/zeta-hdr-test.c -o /tmp/zeta-hdr-test.o && rm -f /tmp/zeta-hdr-test.c /tmp/zeta-hdr-test.o")
  end,
}
