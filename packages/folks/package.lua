return {
  name    = "folks",
  version = "0.15.12-2-x86_64",
  summary = "library to aggregates people into metacontacts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/folks/folks-0.15.12-2-x86_64.pkg.tar.zst",
  sha256  = "771826d051dff4c4e5b8098b1b8e37711ea0c2352e87e7c74b3e87d2794ddfd6",
  deps    = { "libdconf", "evolution-data-server", "glib", "glibc", "libgee", "libxml2", "readline" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libfolks-dummy.so.26.0.0")
  end,
}
