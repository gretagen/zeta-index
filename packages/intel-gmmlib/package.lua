return {
  name    = "intel-gmmlib",
  version = "22.10.1",
  summary = "Intel Graphics Memory Management Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/intel-gmmlib/intel-gmmlib-22.10.1.tar.gz",
  sha256  = "33ebb6e65a2617c59f95a9e70ce0cbeca098316cd265345a0f4db5b381f1024c",
  deps    = { "glibc" },
  build   = function(p)
    p:run("cmake -B build -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release")
    p:run("cmake --build build -j" .. "$(nproc)")
    p:run("DESTDIR=" .. p.install_root .. " cmake --install build")
  end,
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgmmlib.so.1")
  end,
}
