return {
  name    = "duktape",
  version = "2.7.0",
  summary = "Embeddable JavaScript engine (used by polkit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/duktape/duktape-2.7.0.tar.gz",
  sha256  = "a2b4347cdc6e6598b8656379cd4f21c89e365aa53b3d1e6ddc5780db6f30799a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libduktape.so.207")
  end,
}
