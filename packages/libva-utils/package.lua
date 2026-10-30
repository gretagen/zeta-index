return {
  name    = "libva-utils",
  version = "2.24.0-1-x86_64",
  summary = "VA-API utilities (vainfo and encode demos)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libva-utils/libva-utils-2.24.0-1-x86_64.pkg.tar.zst",
  sha256  = "25de533f70dd6d8d31a9914148ad9f7d15831d3d21c01cf31550d046c4dd5ee4",
  deps    = { "libva" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/vainfo")
  end,
}
