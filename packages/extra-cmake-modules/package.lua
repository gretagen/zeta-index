return {
  name    = "extra-cmake-modules",
  version = "6.31.0",
  summary = "KDE: Extra modules and scripts for CMake.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/extra-cmake-modules/extra-cmake-modules-6.31.0.tar.gz",
  sha256  = "2f3b5b0676ca9cad2b37bf5888ecc990914b180caa690fa0acb2d9653f22b104",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
