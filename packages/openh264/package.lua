return {
  name    = "openh264",
  version = "2.7.0-1-x86_64",
  summary = "h.264 encoder and decoder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/openh264/openh264-2.7.0-1-x86_64.pkg.tar.zst",
  sha256  = "c0635a401aada4bc8d2811241c649ed114b834193fe51759c43af12a9c9cebac",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libopenh264.so.2.7.0")
  end,
}
