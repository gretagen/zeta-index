return {
  name    = "lib32-wayland",
  version = "1.26.0",
  summary = "A computer display server protocol",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-wayland/lib32-wayland.pkg.tar.zst",
  sha256  = "edffef2d66b7365425e055b72af4e73857e1e67ccbd718166f72127ab80c9393",
  deps    = { "lib32-glibc", "lib32-libffi", "lib32-expat", "lib32-libxml2", "wayland", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
