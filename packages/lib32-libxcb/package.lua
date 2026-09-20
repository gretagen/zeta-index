return {
  name    = "lib32-libxcb",
  version = "1.17.0",
  summary = "X11 client-side library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxcb/lib32-libxcb.pkg.tar.zst",
  sha256  = "8f9cef88f33bac2f383ec96da50c3461f8bc5b58e79686a4334d76e2e0aa5b6e",
  deps    = { "lib32-libxau", "lib32-glibc", "libxcb", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
