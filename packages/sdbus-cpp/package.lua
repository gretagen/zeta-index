return {
  name    = "sdbus-cpp",
  version = "2.3.1-2",
  summary = "C++ wrapper library for sd-bus (libsystemd D-Bus client)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sdbus-cpp/sdbus-cpp-2.3.1-2.tar.gz",
  sha256  = "7eb3870e5423eb10cede54cd695a56975728ae87e7a6bb259b654ed12220b7ac",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/sdbus-c++/sdbus-c++.h && test -e " .. p.install_root .. "/usr/lib/libsdbus-c++.so.2.3.1 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/sdbus-c++.pc")
  end,
}
