return {
  name    = "skim",
  version = "5.9.0",
  summary = "Fuzzy finder for the terminal (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/skim/skim-5.9.0.tar.gz",
  sha256  = "2fbc895b4d5be9e4febac484dd87eaa4a65f988dbaf4dae9ce4c135934d9e783",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sk")
  end,
}
