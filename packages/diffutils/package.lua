return {
  name    = "diffutils",
  version = "3.12",
  summary = "GNU file comparison utilities (diff, cmp, diff3, sdiff) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/diffutils/diffutils.pkg.tar.zst",
  sha256  = "53830e09d46ceccde48a0fc1dcee026902e2a639a1b8a5e2a091d2a9d90b6967",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/diff && test -x " .. p.install_root .. "/usr/bin/cmp && test -x " .. p.install_root .. "/usr/bin/sdiff")
  end,
}
