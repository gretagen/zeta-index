return {
  name    = "stress",
  version = "1.0.7-3-x86_64",
  summary = "Tool to impose load on and stress test a system (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/stress/stress-1.0.7-3-x86_64.pkg.tar.zst",
  sha256  = "7475cdb392fc284e59ea1e35e873ac5c189c68ddb1ea4c2c29ecdaedbe8b868b",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/stress")
  end,
}
