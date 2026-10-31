return {
  name    = "libuv",
  version = "1.53.0-1-x86_64",
  summary = "Multi-platform asynchronous I/O library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libuv/libuv-1.53.0-1-x86_64.pkg.tar.zst",
  sha256  = "f72536a8283b7a4b7d6126e2920496e95defa2b3708b1289ab0330d4ff3b9122",
  deps    = { "glibc", "libnsl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libuv.so.1")
  end,
}
