return {
  name    = "patchelf",
  version = "0.18.0",
  summary = "Utility to modify the dynamic linker and RPATH of ELF binaries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/patchelf/patchelf-0.18.0.tar.gz",
  sha256  = "ba5cb91e991c974687ab3fc2b38604a78474f69d350f3b66428e9c1b6e4d3e50",
  deps    = { "libstdc++", "gcc-minimal" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/patchelf && " .. p.install_root .. "/usr/bin/patchelf --version")
  end,
}
