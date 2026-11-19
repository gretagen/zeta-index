return {
  name    = "dysk",
  version = "3.8.2",
  summary = "Filesystem table with columns, filters, JSON/CSV (df alternative)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dysk/dysk-3.8.2.tar.gz",
  sha256  = "201dc82aa02eb61d359f07507b0a170665f0482b82ed0e8ef59376ac5686260e",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dysk && " .. p.install_root .. "/usr/bin/dysk --version | grep -q 3.8")
  end,
}
