return {
  name    = "ntbtls",
  version = "0.3.2",
  summary = "A small TLS library using Libgcrypt and Libksba",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ntbtls/ntbtls-0.3.2.tar.gz",
  sha256  = "293f2ea32d422157074380a113abcd2270488e3c48fb164e8ef54a2e66e177b1",
  deps    = { "glibc", "libgcrypt", "libksba", "libgpg-error" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libntbtls.so.0")
  end,
}
