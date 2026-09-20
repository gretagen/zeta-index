return {
  name    = "libxext",
  version = "1.3.6",
  summary = "X11 miscellaneous extensions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxext/libxext-1.3.7-1-x86_64.pkg.tar.zst",
  sha256  = "ac56905dc51bb652eca5f706fd7e7bb7ea81d4e057a236139fc769ce5ea10cf1",
  deps    = { "glibc", "libx11", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
