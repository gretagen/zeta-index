return {
  name    = "opencore-amr",
  version = "0.1.6",
  summary = "OpenCORE AMR codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/opencore-amr/opencore-amr-0.1.6-2-x86_64.pkg.tar.zst",
  sha256  = "d7072809d9754200244280d1b8ffd945a3d87ca7562d82d0bf2bf13ce77261a9",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
