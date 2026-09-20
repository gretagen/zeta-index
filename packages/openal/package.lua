return {
  name    = "openal",
  version = "1.25.2",
  summary = "Cross-platform 3D audio library, software implementation",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/openal/openal.pkg.tar.zst",
  sha256  = "f836d5ee3aa0fc4b46800ac41840e8aa35d076de93114fd07d0de43546c1bd07",
  deps    = { "libgcc", "libstdc++", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
