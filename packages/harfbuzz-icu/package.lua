return {
  name    = "harfbuzz-icu",
  version = "14.4.0",
  summary = "HarfBuzz ICU integration (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/harfbuzz-icu/harfbuzz-icu-14.4.0.pkg.tar.zst",
  sha256  = "0db9f27b44efe28002f6c3740b4119d47f9346e9f43459005883b2015867727f",
  deps    = { "harfbuzz", "icu" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
