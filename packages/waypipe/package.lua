return {
  name    = "waypipe",
  version = "0.11.3-1-x86_64",
  summary = "a proxy for Wayland protocol applications; like ssh -X",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/waypipe/waypipe-0.11.3-1-x86_64.pkg.tar.zst",
  sha256  = "0605ee3b35eecf5cb06ef38b5f3880bff0783b636bf33260d76f58665214c4c9",
  deps    = { "lz4", "zstd", "vulkan-loader", "mesa-full", "ffmpeg" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/waypipe")
  end,
}
