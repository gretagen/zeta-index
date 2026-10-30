return {
  name    = "lsd",
  version = "1.2.0",
  summary = "A ls replacement with colors and icons (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lsd/lsd-1.2.0.tar.gz",
  sha256  = "ff54aea0c5932dda395bb39d61a69a7f06b88dc5f385c9f81ff95dbb54a1cffd",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lsd")
  end,
}
