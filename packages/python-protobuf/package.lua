return {
  name    = "python-protobuf",
  version = "7.36.2",
  summary = "Google protobuf Python runtime (build tool for nanopb codegen)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-protobuf/python-protobuf-7.36.2.tar.gz",
  sha256  = "9d63e9a956896bef93408eb455027af5fab2be48dfe6a0046ebf13d1ab14c0bf",
  deps    = { "glibc", "python", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/google/protobuf && PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import google.protobuf; print('pb ok')\"")
  end,
}
