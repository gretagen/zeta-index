return {
  name    = "libfido2",
  version = "1.17.0-1-x86_64",
  summary = "library functionality for FIDO 2.0, including communication with a device over USB",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libfido2/libfido2-1.17.0-1-x86_64.pkg.tar.zst",
  sha256  = "4826831aee9a4e231a7f74370f9463e6a840ef7fc882128344f8f1e46dc0fb66",
  deps    = { "glibc", "openssl", "libcbor", "hidapi", "systemd-libs", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libfido2.so.1.17.0")
  end,
}
