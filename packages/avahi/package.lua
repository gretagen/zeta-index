return {
  name    = "avahi",
  version = "0.8",
  summary = "mDNS/DNS-SD (Bonjour) implementation",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/avahi/avahi-0.8.tar.gz",
  sha256  = "86b6746b144e1c169d61e5f1ffaf20fd186e9c4ab1dab939675125a19f333a1f",
  deps    = { "glibc", "libdaemon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr/lib -name 'libavahi-common.so*' | grep -q .")
  end,
}
