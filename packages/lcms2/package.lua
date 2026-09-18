return {
  name    = "lcms2",
  version = "2.17",
  summary = "Little CMS 2 — color management library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lcms2/lcms2-2.17.tar.gz",
  sha256  = "089dac19d25fe6187c674cbbc220b9fd04b283b00e8f92eb3d68f66ecb51d011",
  deps    = { "glibc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblcms2.so")
  end,
}
