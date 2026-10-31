return {
  name    = "mise",
  version = "2026.10.24",
  summary = "Development environment manager (asdf successor) (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mise/mise-2026.10.24.tar.gz",
  sha256  = "101b41b307d562182505be324190679a101549dbb902a994e965d96e857a898e",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mise")
  end,
}
