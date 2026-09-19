return {
  name    = "libwireplumber",
  version = "0.5.17",
  summary = "PipeWire session manager client library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libwireplumber/libwireplumber-0.5.17-1-x86_64.pkg.tar.zst",
  sha256  = "3de4f7956373c0d07e4cf6e089ae8255b427318a744bd65628bfebb328be97f3",
  deps    = { "glibc", "gcc", "glib", "pipewire" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libwireplumber-0.5.so.0")
  end,
}
