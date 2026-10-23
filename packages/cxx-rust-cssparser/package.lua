return {
  name    = "cxx-rust-cssparser",
  version = "1.1.0",
  summary = "KDE: Library for parsing CSS using the Rust cssparser crate",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cxx-rust-cssparser/cxx-rust-cssparser-1.1.0.tar.gz",
  sha256  = "c3216e6d9d8fab8c76b5f137f35bca10afb51b4e53b67c00e0491bb4ed30973d",
  deps    = { "glibc", "qtbase", "gcc", "corrosion", "rust" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
