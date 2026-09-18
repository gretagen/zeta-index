return {
  name    = "unibilium",
  version = "2.1.2",
  summary = "Library to parse terminal information (terminfo)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/unibilium/unibilium-2.1.2.tar.gz",
  sha256  = "5db87ac572d4db74d20700eb0e5fd8d989c9674121acafc69253b296320c082a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libunibilium.so.4")
  end,
}
