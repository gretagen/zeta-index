return {
  name    = "lxqt-build-tools",
  version = "2.1.0",
  summary = "LXQt build-tools for CMake",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-build-tools/lxqt-build-tools-2.1.0.tar.gz",
  sha256  = "e8201b662dee4ae482d55032538fd269619ad359772eba754e28aee433d93439",
  deps    = {  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/cmake/lxqt2-build-tools/lxqt2-build-tools-config.cmake")
  end,
}
