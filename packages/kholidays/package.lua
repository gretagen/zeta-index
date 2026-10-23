return {
  name    = "kholidays",
  version = "6.13.0",
  summary = "KDE: KHolidays: Library to assist determining when holidays occur",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kholidays/kholidays-6.13.0.tar.gz",
  sha256  = "2b5b9810bf27f6a8866918f4a57a946994e5cb5dcbd9adf55ddda71cdee5806a",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
