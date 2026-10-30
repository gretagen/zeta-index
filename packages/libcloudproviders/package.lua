return {
  name    = "libcloudproviders",
  version = "0.4.1-1-x86_64",
  summary = "dBus API that allows cloud storage sync clients to expose their services",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcloudproviders/libcloudproviders-0.4.1-1-x86_64.pkg.tar.zst",
  sha256  = "4118ca6e1b14202e5d08d8e6013cb47152d7b8433a94a1d67a0c025a9f2f6896",
  deps    = { "libgcc", "glib", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcloudproviders.so.0.4.1")
  end,
}
