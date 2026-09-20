return {
  name    = "zimg",
  version = "3.0.6",
  summary = "Image processing library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/zimg/zimg-3.0.6-2-x86_64.pkg.tar.zst",
  sha256  = "cfd009bc43571c04a189dff125c57552f826840e82cfb146eb94990339adf9a6",
  deps    = { "glibc", "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
