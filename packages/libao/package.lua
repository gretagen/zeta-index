return {
  name    = "libao",
  version = "1.2.2-7-x86_64",
  summary = "cross-platform audio output library and plugins",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libao/libao-1.2.2-7-x86_64.pkg.tar.zst",
  sha256  = "6b362bd8446a9eb330d26cc1c7c86048402848d9c0c466f3204562895eb655ad",
  deps    = { "glibc", "alsa-lib", "libpulse" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/ao/plugins-4/libalsa.so")
  end,
}
