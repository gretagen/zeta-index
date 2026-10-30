return {
  name    = "libplist",
  version = "2.7.0-3-x86_64",
  summary = "library to handle Apple Property List files",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libplist/libplist-2.7.0-3-x86_64.pkg.tar.zst",
  sha256  = "3bfa58c10996d9ba38e03a61b6cc9c1e5c5cd02ab12e26bce96649cb35431e3c",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libplist++-2.0.so.4.7.0")
  end,
}
