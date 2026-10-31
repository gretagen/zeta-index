return {
  name    = "c-ares",
  version = "1.34.9-1-x86_64",
  summary = "C library for asynchronous DNS requests (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/c-ares/c-ares-1.34.9-1-x86_64.pkg.tar.zst",
  sha256  = "d5311eb9e8dfb8e25bc0246737c89b2343571673d91032f5395cfaef55139016",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcares.so.2")
  end,
}
