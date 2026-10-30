return {
  name    = "alsa-card-profiles",
  version = "1.6.10-1-x86_64",
  summary = "low-latency audio/video router and processor - ALSA card profiles",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/alsa-card-profiles/alsa-card-profiles-1.6.10-1-x86_64.pkg.tar.zst",
  sha256  = "043678ed42f435844f6669c8dcd8ff71bdfeb16526af6b748746ce8825671741",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/udev/rules.d/90-pipewire-alsa.rules")
  end,
}
