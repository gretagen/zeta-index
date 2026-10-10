return {
  name    = "libglvnd",
  version = "1.7.0",
  summary = "The GL Vendor-Neutral Dispatch library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libglvnd/libglvnd-1.7.0.tar.gz",
  sha256  = "cbe928d7064aa2d5bcd9a78d46509ebed252f78d8581e6524bb46d0f7be5aa8e",
  deps    = { "glibc", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libGL.so.1 && test -e " .. p.install_root .. "/usr/lib/libEGL.so.1 && test -e " .. p.install_root .. "/usr/lib/libGLX.so.0")
    -- tripwire: payload must have NO files at the install root (only usr/ allowed)
    p:run("! find " .. p.install_root .. " -maxdepth 1 -type f | grep -q .")
  end,
}