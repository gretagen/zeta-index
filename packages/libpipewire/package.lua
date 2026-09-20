return {
  name    = "libpipewire",
  version = "1.6.8",
  summary = "Multimedia framework library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libpipewire/libpipewire-1%3A1.6.8-1-x86_64.pkg.tar.zst",
  sha256  = "4bf22c0509618e2093b5d7662a2fce23bae5afb2a23ff45e26ebd548b5c7cedc",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
