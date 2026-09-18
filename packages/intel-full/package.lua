return {
  name    = "intel-full",
  version = "1.0",
  summary = "Complete Intel GPU graphics stack (VA-API iHD/i965, X11 DDX driver, Mesa)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/intel-full/intel-full-1.0.tar.gz",
  sha256  = "430e653843421b02e8d8140cf2ec838d9ca97351be0f9fae5b0fc99b76e7b4c9",
  deps    = {
    -- Base graphics stack
    "mesa-full",
    -- Intel VA-API drivers
    "intel-gmmlib",
    "intel-media-driver",
    "libva-intel-driver",
    -- Intel X11 driver
    "xf86-video-intel",
    -- X11 support libs needed by xf86-video-intel
    "libpciaccess",
    "libXvMC",
  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
