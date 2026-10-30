return {
  name    = "libnm",
  version = "1.58.1-2-x86_64",
  summary = "networkManager client library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libnm/libnm-1.58.1-2-x86_64.pkg.tar.zst",
  sha256  = "21b2f67ed6fbd9cd0904cddd661b071145ae85425ceedcba9b39afa5188af8ac",
  deps    = { "glib", "glibc", "libgcc", "nspr", "nss", "systemd-libs", "util-linux-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnm.so.0.1.0")
  end,
}
