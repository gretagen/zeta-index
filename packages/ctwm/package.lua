return {
  name    = "ctwm",
  version = "4.1.0",
  summary = "Window manager based on TWM (with virtual workspaces)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ctwm/ctwm-4.1.0.tar.gz",
  sha256  = "702d9c567879fd0fe087ecccf2cf12794edbb2fca443f249a3fdba406b3d22a2",
  deps    = { "glibc", "libICE", "libSM", "libX11", "libXdmcp", "libXext", "libXmu", "libXpm", "libXrandr", "libXt", "libjpeg-turbo" },
  archive = { strip = 1 },
}
