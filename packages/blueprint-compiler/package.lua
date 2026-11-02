return {
  name    = "blueprint-compiler",
  version = "0.22.2",
  summary = "GTK Blueprint UI definition compiler",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/blueprint-compiler/blueprint-compiler-0.22.2.tar.gz",
  sha256  = "96d3bc0f8e42e7f107faedc3386602afd738e7b145b0ed33bd5c3e3ffc8f7b38",
  deps    = { "glibc", "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/blueprint-compiler")
  end,
}
