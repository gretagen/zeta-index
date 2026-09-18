return {
  name    = "solid",
  version = "6.14.0",
  summary = "KF6 hardware detection (KF6Solid)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/solid/solid-6.14.0.tar.gz",
  sha256  = "dde3db60c7b6e8def8715aa2bd62a03621f14160ade41fc71238f4ad2c03a41b",
  deps    = { "glibc", "qtbase" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/cmake/KF6Solid/KF6SolidConfig.cmake")
  end,
}
