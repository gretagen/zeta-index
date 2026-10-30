return {
  name    = "dotconf",
  version = "1.4.1-2-x86_64",
  summary = "a C library for parsing configuration files",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/dotconf/dotconf-1.4.1-2-x86_64.pkg.tar.zst",
  sha256  = "ed96fd1ed8d4b67b046b8b9d9316be2d27d52f709ce31352313a97e58b0a6f3c",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdotconf.so.0.0.1")
  end,
}
