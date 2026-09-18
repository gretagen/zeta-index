return {
  name    = "libevent",
  version = "2.1.12",
  summary = "Event notification library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libevent/libevent-2.1.12.tar.gz",
  sha256  = "1eb7339f301011ae6a4d812f40f858c12fbb8e00ac66a7dc7871360286d92317",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr/lib -name 'libevent*.so*' | grep -q .")
  end,
}
