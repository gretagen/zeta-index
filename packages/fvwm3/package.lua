return {
  name = "fvwm3",
  version = "1.1.5",
  summary = "Virtual window manager for the X Window System",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fvwm3/fvwm3-1.1.5.tar.gz",
  sha256 = "11b19a57c278fbe9784b844df7f8d9ef9335c02fe94eca78e6ad366b58ce26b5",
  deps = { "glibc", "cairo", "fontconfig", "fribidi", "libICE", "libSM", "libX11", "libXcursor", "libXext", "libXfixes", "libXft", "libXpm", "libXrandr", "libXrender", "libpng", "libevent" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x '" .. p.install_root .. "'/usr/bin/fvwm3")
    p:run("test -x '" .. p.install_root .. "'/usr/bin/FvwmCommand")
    p:run(p.install_root .. "/usr/bin/fvwm3 --version")
  end,
}
