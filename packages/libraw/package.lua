return {
  name    = "libraw",
  version = "0.22.3-1-x86_64",
  summary = "a library for reading RAW files obtained from digital photo cameras (CRW/CR2, NEF, RAF, DNG,",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libraw/libraw-0.22.3-1-x86_64.pkg.tar.zst",
  sha256  = "4bcb6fba76dae5a9eb20af1d92ad8023078469ce82213e1627ef5c8f2baaafda",
  deps    = { "glibc", "lcms2", "libgcc", "libgomp", "libjpeg-turbo", "libstdc++", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libraw.so.25.0.0")
  end,
}
