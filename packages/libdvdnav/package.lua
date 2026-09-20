return {
  name    = "libdvdnav",
  version = "7.0.0",
  summary = "DVD navigation library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libdvdnav/libdvdnav-7.0.0-1-x86_64.pkg.tar.zst",
  sha256  = "442122c2f7eefdcdd6a3042b531c5cf9aec10105fc32f39912170ae7c6410a6b",
  deps    = { "glibc", "libdvdread", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
