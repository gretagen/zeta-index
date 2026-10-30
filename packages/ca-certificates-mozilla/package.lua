return {
  name    = "ca-certificates-mozilla",
  version = "3.132-1-x86_64",
  summary = "mozilla's set of trusted CA certificates",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ca-certificates-mozilla/ca-certificates-mozilla-3.132-1-x86_64.pkg.tar.zst",
  sha256  = "d2305ed8c1426e018ad611cb6e7fa387c3cac0f2e7040401dae2f1f78e0867ab",
  deps    = { "ca-certificates-utils" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/ca-certificates/trust-source/mozilla.trust.p11-kit")
  end,
}
