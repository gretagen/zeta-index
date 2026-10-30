return {
  name    = "wob",
  version = "0.16-2-x86_64",
  summary = "a lightweight overlay volume/backlight/progress/anything bar for Wayland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wob/wob-0.16-2-x86_64.pkg.tar.zst",
  sha256  = "8761a813c99411c00ec22cbd0304910e5157a8c2c240159194a4bd5233c7fa3b",
  deps    = { "glibc", "inih", "libseccomp", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/wob")
  end,
}
