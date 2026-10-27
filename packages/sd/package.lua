return {
  name    = "sd",
  version = "1.1.0",
  summary = "Intuitive find and replace CLI (sed alternative)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sd/sd-1.1.0.tar.gz",
  sha256  = "6bb787a37b7264c425065ba72a8b427281e89b1530fa36edbd42a13f9d6c1256",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sd")
  end,
}
