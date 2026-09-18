return {
  name    = "libffi",
  version = "3.4.6",
  summary = "Portable Foreign Function Interface library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libffi/libffi-3.4.6.tar.gz",
  sha256  = "479feee3910d6a1296dd4c7f501b851800e18108b23324220b0587b9e7f3e6ef",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libffi.so.8.1.4 && test -L " .. p.install_root .. "/usr/lib/libffi.so.8 && nm -D --defined-only " .. p.install_root .. "/usr/lib/libffi.so.8.1.4 | grep -q ' ffi_call'")
  end,
}
