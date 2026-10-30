return {
  name    = "totem-pl-parser",
  version = "3.26.7-1-x86_64",
  summary = "simple GObject-based library to parse and save a host of playlist formats",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/totem-pl-parser/totem-pl-parser-3.26.7-1-x86_64.pkg.tar.zst",
  sha256  = "a9e530a036c3a337d5ccea670cd148ef5b8d318052fc158ba2780dfa2e6dde96",
  deps    = { "glib", "glibc", "libarchive", "libgcc", "libgcrypt", "libxml2", "uchardet" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libtotem-plparser-mini.so.18.3.6")
  end,
}
