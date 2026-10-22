return {
  name    = "solid",
  version = "6.13.0",
  summary = "KDE: Solid",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/solid/solid-6.13.0.tar.gz",
  sha256  = "8d1cd0f9259466d2ce81093532ba90d56451c0505941ebd41a6c170b1549daa1",
  deps    = { "glibc", "qtbase", "gcc", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
