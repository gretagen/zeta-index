return {
  name    = "wofi",
  version = "1.5.3",
  summary = "Wayland-native launcher (rofi-style)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wofi/wofi-1.5.3.tar.gz",
  sha256  = "e942342be8296fb904808118478e7b00dea5cff9b45db921d84094f34d1cd490",
  deps    = { "glibc", "gtk3", "wayland" },
  archive = { strip = 1 },
}
