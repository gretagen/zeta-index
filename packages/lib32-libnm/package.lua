return {
  name    = "lib32-libnm",
  version = "1.58.1",
  summary = "NetworkManager client library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libnm/lib32-libnm.pkg.tar.zst",
  sha256  = "20e20feb37caff93a3b7d47961933a26f5abdd130e65aa81d0fb296de0aa3ebc",
  deps    = { "lib32-gcc-libs", "lib32-glib2", "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
