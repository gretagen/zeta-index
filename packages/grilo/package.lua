return {
  name    = "grilo",
  version = "0.3.19-2-x86_64",
  summary = "framework that provides access to various sources of multimedia content",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/grilo/grilo-0.3.19-2-x86_64.pkg.tar.zst",
  sha256  = "45b4ca8a001c74dacdad0862043172055366aaded3fee678545117161f383c59",
  deps    = { "glib", "glibc", "libgcc", "libsoup3", "libxml2", "totem-pl-parser" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgrilo-0.3.so.0.319.1")
  end,
}
