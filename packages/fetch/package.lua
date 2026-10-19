return {
  name    = "fetch",
  version = "2.3.0-1",
  summary = "Animated 3D fetch tool for your terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fetch/fetch-2.3.0-1.tar.gz",
  sha256  = "22db8188fc54530fb0227b4db76d06107a27978ce8ee89285824bc0678f41005",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fetch && test -x " .. p.install_root .. "/usr/bin/fetch.bin && test -f " .. p.install_root .. "/usr/share/fetch/config && test -f " .. p.install_root .. "/usr/share/fetch/logo.txt")
  end,
}
