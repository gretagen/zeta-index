return {
  name    = "libassuan",
  version = "3.0.2",
  summary = "IPC library used by GnuPG components",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libassuan/libassuan-3.0.2.tar.gz",
  sha256  = "900fdf82d7901baf07c2e611c2a660e602cf8b398b38b2fdc272d9f9769db752",
  deps    = { "glibc", "libgpg-error" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libassuan.so.9")
  end,
}
