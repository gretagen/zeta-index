return {
  name    = "corrosion",
  version = "0.6.1",
  summary = "CMake/Cargo integration module (Corrosion)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/corrosion/corrosion-0.6.1.tar.gz",
  sha256  = "e19ea72956aac9dda1abb3ecc4ccb45bc80e274d355ca4bd6fc88e9d782a447e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -name 'CorrosionConfig.cmake' | grep -q .")
  end,
}
