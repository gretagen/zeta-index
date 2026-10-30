return {
  name    = "lilv",
  version = "0.28.0-1-x86_64",
  summary = "a C library interface to the LV2 plug-in standard",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lilv/lilv-0.28.0-1-x86_64.pkg.tar.zst",
  sha256  = "d8b6e7aea382261114d383eb0ea93249a1172e28a1bc25613c5cd2a737511c7c",
  deps    = { "glibc", "serd", "sord", "sratom", "lv2", "zix" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblilv-0.so.0.28.0")
  end,
}
