return {
  name    = "asio",
  version = "1.39.0",
  summary = "Asio: cross-platform C++ asynchronous I/O (header-only)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/asio/asio-1.39.0.tar.gz",
  sha256  = "61c8a539ab732ff6f8b28e910a95d644656cd38fed2b259cb77de49766ccab95",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/asio.hpp && test -f " .. p.install_root .. "/usr/include/asio/version.hpp && grep -q 'ASIO_VERSION 103900' " .. p.install_root .. "/usr/include/asio/version.hpp")
  end,
}
