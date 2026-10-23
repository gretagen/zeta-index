return {
  name    = "kfilemetadata",
  version = "6.13.0",
  summary = "KDE: A library for extracting file metadata",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kfilemetadata/kfilemetadata-6.13.0.tar.gz",
  sha256  = "a4fe0cc58dca09672824eaf13b4a36586cd6a00b68f2e4ffce0afe0ad4fba5e4",
  deps    = { "glibc", "qtbase", "gcc", "karchive", "kcodecs", "kcoreaddons", "ki18n", "poppler", "taglib", "ffmpeg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
