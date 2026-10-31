return {
  name    = "stfl",
  version = "0.24-6-x86_64",
  summary = "Library for building text-based interfaces (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/stfl/stfl-0.24-6-x86_64.pkg.tar.zst",
  sha256  = "b8bee248f62333038cc94378a3e5033a287d3cb67f8c2d6e9b34ac3428ab80d3",
  deps    = { "glibc", "ncurses" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libstfl.so.0")
  end,
}
