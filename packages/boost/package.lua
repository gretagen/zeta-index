return {
  name    = "boost",
  version = "1.92.0",
  summary = "Boost C++ libraries (headers)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/boost/boost-1.92.0.tar.gz",
  sha256  = "9d0c7939a1de27e146f1504fcf1278637cebf21edaf3aa1754323206c9dd092f",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/boost/version.hpp && grep -q 'BOOST_LIB_VERSION' " .. p.install_root .. "/usr/include/boost/version.hpp")
  end,
}
