return {
  name    = "libmnl",
  version = "1.0.5",
  summary = "Minimalistic user-space library oriented to Netlink developers (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libmnl/libmnl.pkg.tar.zst",
  sha256  = "1ee554fe2637bbee1da61f0bdbd3f9d1dd89ddbb9809cd5ef012540a748ff4a0",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmnl.so")
  end,
}