return {
  name    = "libfyaml",
  version = "0.9",
  summary = "Fully featured YAML 1.2 parser and emitter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libfyaml/libfyaml-0.9.tar.gz",
  sha256  = "4fb07b7845bd3429cd859444ba770eba7235f024896fda794f7931960035f77c",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libfyaml.so.0")
  end,
}
