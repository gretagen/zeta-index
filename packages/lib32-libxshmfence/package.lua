return {
  name    = "lib32-libxshmfence",
  version = "1.3.3",
  summary = "a library that exposes a event API on top of Linux futexes (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxshmfence/lib32-libxshmfence.pkg.tar.zst",
  sha256  = "988dc4d5fdf31b1feb3c21eb9d92b73fb20d683b8a4af583f52d3cc4b294a033",
  deps    = { "lib32-glibc", "libxshmfence", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
