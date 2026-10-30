return {
  name    = "onetbb",
  version = "2023.1.0-1-x86_64",
  summary = "oneAPI Threading Building Blocks - a high level abstract threading library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/onetbb/onetbb-2023.1.0-1-x86_64.pkg.tar.zst",
  sha256  = "fd2318a3988bc73935c63fe8678f4afa0813271549bd99d431414bea25b4f0ed",
  deps    = { "glibc", "hwloc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libirml.so.1")
  end,
}
