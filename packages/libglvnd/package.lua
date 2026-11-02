return {
  name    = "libglvnd",
  version = "1.7.0-2",
  summary = "Vendor-neutral GL dispatch library (with dev payload)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libglvnd/libglvnd-1.7.0-2.tar.gz",
  sha256  = "3ef90586504cbae23d1705bd0f902ecf046649a7e59be976b7ebebe12ec26bc8",
  deps    = { "glibc", "libX11" },
  archive = { strip = 1 },
}
