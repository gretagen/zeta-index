return {
  name    = "libical",
  version = "4.0.5",
  summary = "Reference implementation of the iCalendar data format (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libical/libical-4.0.5-1-x86_64.pkg.tar.zst",
  sha256  = "fe50b8be3af64d89b5eab61ca3c9a5494a645497a0e49bb914c9f5c7a896bf7e",
  deps    = { "glibc", "gcc", "glib", "icu", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libical.so.4.0")
  end,
}
