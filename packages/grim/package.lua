return {
  name    = "grim",
  version = "1.5.0",
  summary = "Screenshot utility for Wayland compositors (wlroots)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/grim/grim-1.5.0-2-x86_64.pkg.tar.zst",
  sha256  = "d3fcca73baef7860593dd3bc25ddbc40216a43c6a8614358a1adc588fdb8b8f5",
  deps    = { "glibc", "cairo", "libjpeg-turbo", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/grim")
  end,
}