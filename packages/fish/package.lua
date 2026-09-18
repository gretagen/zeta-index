return {
  name    = "fish",
  version = "4.8.1",
  summary = "Friendly interactive shell",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fish/fish-4.8.1.tar.gz",
  sha256  = "9b7503786d7396bd154df703d1893b686647dca60fd5a3552d94da9aa6256edb",
  deps    = { "glibc", "pcre2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fish")
  end,
}
