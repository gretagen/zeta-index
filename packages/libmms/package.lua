return {
  name    = "libmms",
  version = "0.6.4-6-x86_64",
  summary = "mMS stream protocol library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmms/libmms-0.6.4-6-x86_64.pkg.tar.zst",
  sha256  = "2e85a8e2e28772a0680460188a42ce4dcd377b96c529820e462e84b72c5e0932",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmms.so.0.0.2")
  end,
}
