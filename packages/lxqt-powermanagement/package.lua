return {
  name    = "lxqt-powermanagement",
  version = "2.1.0",
  summary = "LXQt component (lxqt-powermanagement)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-powermanagement/lxqt-powermanagement-2.1.0.tar.gz",
  sha256  = "52ac01a53270640023ab373c64e601c1b34d3109d9d2a917575d61218bbd152b",
  deps    = { "glibc", "kidletime", "kwindowsystem", "liblxqt", "libqtxdg", "lxqt-globalkeys", "qtbase", "qtsvg", "solid" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-powermanagement")
  end,
}
