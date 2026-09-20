return {
  name    = "svt-av1",
  version = "4.2.0",
  summary = "Scalable AV1 encoder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/svt-av1/svt-av1-4.2.0-1-x86_64.pkg.tar.zst",
  sha256  = "3d807071e467a022eeab287ff117c73ec4abb085a0374b54d9ff33b4479f515a",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
