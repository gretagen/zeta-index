return {
  name    = "vmaf",
  version = "3.2.1",
  summary = "Video quality assessment",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/vmaf/vmaf-3.2.1-1-x86_64.pkg.tar.zst",
  sha256  = "c99983f741cf5679bd44eeecf6ca53931077f7d07563480376fc2b0256548910",
  deps    = { "glibc", "libgcc", "libstdc++", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
