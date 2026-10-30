return {
  name    = "libsigc++-3.0",
  version = "3.8.1-1-x86_64",
  summary = "callback Framework for C++",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libsigc++-3.0/libsigc++-3.0-3.8.1-1-x86_64.pkg.tar.zst",
  sha256  = "f08326a1beaaca60ef629c1a9e0eac42948a374b3584e6cc34e33523e2b3b371",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsigc-3.0.so.0.0.0")
  end,
}
