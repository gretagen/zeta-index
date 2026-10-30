return {
  name    = "wlr-randr",
  version = "0.5.0-1-x86_64",
  summary = "utility to manage outputs of a Wayland compositor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wlr-randr/wlr-randr-0.5.0-1-x86_64.pkg.tar.zst",
  sha256  = "cbefba7fd65a384eb44b12df6fbd36d871782827f21a4c793bff171a298887c9",
  deps    = { "wayland", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/wlr-randr")
  end,
}
