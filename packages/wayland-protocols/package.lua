return {
  name = "wayland-protocols",
  version = "1.49",
  summary = "Wayland protocol XML definitions (build-time data for compositors and clients)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wayland-protocols/wayland-protocols-1.49.tar.gz",
  sha256 = "22ed4ab46c3ed473da814d042de9a0ce108427582fa4300a39965ab21387399a",
  deps = {},
  archive = { strip = 1 },
  test = function(p)
    p:run("find '" .. p.install_root .. "'/usr/share/wayland-protocols -name '*.xml' | grep -q .")
  end,
}
