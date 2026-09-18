return {
  name    = "libyaml",
  version = "0.2.5",
  summary = "YAML 1.1 parser and emitter library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libyaml/libyaml-0.2.5.tar.gz",
  sha256  = "07f5adbefffdefca51958aa5207a634aaa50ea532e566516be99db581a73470c",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libyaml-0.so.2")
  end,
}
