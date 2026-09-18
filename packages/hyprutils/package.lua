return {
  name    = "hyprutils",
  version = "0.14.0",
  summary = "Hyprland utilities library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyprutils/hyprutils-0.14.0.tar.gz",
  sha256  = "d2d92a9c6cabb1a82545ace4434be1e46450f536602c966f0de5f5b8fad010ac",
  deps    = { "glibc", "pixman" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libhyprutils.so.13")
  end,
}
