return {
  name    = "libltc",
  version = "1.3.2-2-x86_64",
  summary = "linear/Logitudinal Time Code (LTC) Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libltc/libltc-1.3.2-2-x86_64.pkg.tar.zst",
  sha256  = "01ec3ce024c3f5b0576192bbcd1d906374d6d4f147ede75e2c17c2bf2771114b",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libltc.so.11.2.0")
  end,
}
