return {
  name    = "asio",
  version = "1.30.2",
  summary = "Asio: cross-platform C++ asynchronous I/O (header-only)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/asio/asio-1.30.2.tar.gz",
  sha256  = "b95d6283e96288e5a072ac29631aec4b752512d7be80a69a54f9161b5d908d7b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/asio.hpp && test -f " .. p.install_root .. "/usr/include/asio/version.hpp && grep -q 'ASIO_VERSION 103002' " .. p.install_root .. "/usr/include/asio/version.hpp")
  end,
}
