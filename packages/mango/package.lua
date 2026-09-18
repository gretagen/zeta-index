return {
  name = "mango",
  version = "0.15.6",
  summary = "MangoWM: lightweight dwl-based Wayland compositor",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mango/mango-0.15.6.tar.gz",
  sha256 = "092c3c83103c5d22284d6f33208fdeefc32cb3ac32be72429863b4ffd4169bbe",
  deps = { "glibc", "cairo", "cjson", "pango", "pixman", "scenefx", "wayland", "wlroots", "xkbcommon" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x '" .. p.install_root .. "'/usr/bin/mango")
    p:run("readelf -d '" .. p.install_root .. "'/usr/bin/mango | grep -q libwlroots-0.20")
  end,
}
