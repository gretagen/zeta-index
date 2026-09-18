return {
  name    = "sdbus-cpp",
  version = "2.3.1",
  summary = "C++ wrapper library for sd-bus (libsystemd D-Bus client)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sdbus-cpp/sdbus-cpp-2.3.1.tar.gz",
  sha256  = "10e41946044ab979c440fee1dcd86f85407d9028181c5382ddea51c73337ce82",
  deps    = { "glibc", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libsdbus-c++.so.2.3.1")
  end,
}
