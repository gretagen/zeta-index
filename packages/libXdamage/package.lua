return {
  name = "libXdamage",
  version = "1.1.7",
  summary = "X11 Damage extension client library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXdamage/libXdamage-1.1.7.tar.gz",
  sha256 = "b786164a246e6942c43796dbfd7102341e3eb36e58be6b57cf058870497dd317",
  deps = { "glibc", "libX11", "libXau", "libXdmcp", "libXext", "libXfixes", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXdamage.so.1")
  end,
}
