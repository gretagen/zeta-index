return {
  name = "cjson",
  version = "1.7.19",
  summary = "Ultralightweight JSON parser for C (used by mango)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cjson/cjson-1.7.19.tar.gz",
  sha256 = "fc2ab93b32486b6be1dd4c76e7bb8394ca5a4d0aa7fc2c60b4bb36c3628e417e",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libcjson.so.1")
  end,
}
