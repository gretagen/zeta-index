return {
  name    = "qt6-declarative",
  version = "6.12.0-3-x86_64",
  summary = "classes for QML and JavaScript languages",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/qt6-declarative/qt6-declarative-6.12.0-3-x86_64.pkg.tar.zst",
  sha256  = "cd4abff40be0352905933a6475912ac695fdf8e0a3c88e7e8b986316852da6bf",
  deps    = { "glibc", "libgcc", "libstdc++", "qt6-base" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6LabsAnimation.so.6.12.0")
  end,
}
