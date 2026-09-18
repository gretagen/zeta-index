return {
  name    = "seatd",
  version = "0.9.3",
  summary = "Seat management daemon and library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/seatd/seatd-0.9.3.tar.gz",
  sha256  = "7297bd9aa689c0ac5416d509925f7b02bd103fa4ace63a0aedf13069868c46c2",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libseat.so.1")
  end,
}
