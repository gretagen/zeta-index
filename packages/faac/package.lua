return {
  name    = "faac",
  version = "2.1-1-x86_64",
  summary = "freeware Advanced Audio Coder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/faac/faac-2.1-1-x86_64.pkg.tar.zst",
  sha256  = "38ddd07438a002e65af1dfdf046c3f5285d57fbc2c5cc6d63f7b6e73e6c49933",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/faac")
  end,
}
