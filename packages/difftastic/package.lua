return {
  name    = "difftastic",
  version = "0.72.0",
  summary = "Structural diff tool that understands syntax (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/difftastic/difftastic-0.72.0.tar.gz",
  sha256  = "15bb9e55f5ba3edcb3e0c0b4d15bfc1805f125c62b26f6d711cdc2ff612bc353",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/difft")
  end,
}
