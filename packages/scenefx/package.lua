return {
  name = "scenefx",
  version = "0.5",
  summary = "Wayland compositor effects library (window animation/effects)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/scenefx/scenefx-0.5.tar.gz",
  sha256 = "ccb38eae90c6ecf11aa2f14ac563ca806b42480dd5da5f73c6869bd03adfac27",
  deps = { "glibc", "wlroots", "wayland", "libdrm", "pixman", "libglvnd", "mesa-drivers" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libscenefx-0.5.so")
  end,
}
