return {
  name    = "pcsc-lite",
  version = "2.5.3",
  summary = "PC/SC smartcard service and client library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pcsc-lite/pcsc-lite-2.5.3.tar.gz",
  sha256  = "ff23cc6713ee9ae6d8037b921fdeaed4a8bc9157b242434442389db71eaf0ffb",
  deps    = { "glibc", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/pcscd && test -f " .. p.install_root .. "/usr/lib/libpcsclite.so.1 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libpcsclite.pc && test -f " .. p.install_root .. "/usr/include/PCSC/winscard.h")
  end,
}
