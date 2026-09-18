return {
  name    = "awww",
  version = "0.12.1",
  summary = "Efficient animated wallpaper daemon for Wayland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/awww/awww-0.12.1.tar.gz",
  sha256  = "c18b5426680e52b4c8074886b6d0ffcf2d8db702559543f2c753528f3180989e",
  deps    = { "glibc", "lz4" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/awww")
    p:run("test -x " .. p.install_root .. "/usr/bin/awww-daemon")
  end,
}
