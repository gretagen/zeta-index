return {
  name    = "libwacom",
  version = "2.19.0",
  summary = "Wacom tablet database and library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libwacom/libwacom-2.19.0.tar.gz",
  sha256  = "cbed8c1040f15e49f5f7b221fb9d4e0c31d064afbc9edb232abc4574c0659eb7",
  deps    = { "glibc", "libevdev", "libgudev" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libwacom.so.9")
  end,
}
