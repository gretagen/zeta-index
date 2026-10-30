return {
  name    = "libtatsu",
  version = "1.0.5-1-x86_64",
  summary = "library handling the communication with Apple's Tatsu Signing Server (TSS)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libtatsu/libtatsu-1.0.5-1-x86_64.pkg.tar.zst",
  sha256  = "3151e7443850fd811e88d7cd7e6606b234f69f95f06ef79fa9f601cee3f85714",
  deps    = { "curl", "glibc", "libplist" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libtatsu.so.0.0.3")
  end,
}
