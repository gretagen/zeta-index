return {
  name    = "mobile-broadband-provider-info",
  version = "20251101-1-any",
  summary = "aPN configuration presets for mobile broadband connections",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mobile-broadband-provider-info/mobile-broadband-provider-info-20251101-1-any.pkg.tar.zst",
  sha256  = "1b0146d8b72f6ffc3edcccd5709d8de42798c4827a5fccd994c389584d60c56c",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/mobile-broadband-provider-info/apns-conf.xml")
  end,
}
