return {
  name    = "uv",
  version = "0.13.9",
  summary = "Fast Python package and environment manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/uv/uv-0.13.9.tar.gz",
  sha256  = "d5c73b9d94821b55df20c9398e7f1ea0e9cc00ae6d4d86692efec6d910a842e8",
  deps    = { "glibc", "gcc", "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/uv && " .. p.install_root .. "/usr/bin/uv --version | grep -q 0.13 && " .. p.install_root .. "/usr/bin/uv --help 2>&1 | grep -qi usage")
  end,
}
