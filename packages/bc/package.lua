return {
  name    = "bc",
  version = "1.08.2",
  summary = "GNU bc arbitrary precision calculator (the kernel build needs it to generate timeconst.h)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bc/bc-1.08.2.tar.gz",
  sha256  = "9f9f542514c31be84f60633321f30b4bc1907ebee66c36800fe2695818fa14cd",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bc")
    -- the kernel's usage: echo $CONFIG_HZ | bc -q kernel/time/timeconst.bc
    p:run("echo '2+2' | " .. p.install_root .. "/usr/bin/bc -q | grep -qx 4")
    p:run("! ldd " .. p.install_root .. "/usr/bin/bc | grep -q readline")
  end,
}
