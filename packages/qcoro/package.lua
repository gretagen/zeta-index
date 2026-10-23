return {
  name    = "qcoro",
  version = "0.13.0",
  summary = "Qt coroutine helpers library (QCoro)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qcoro/qcoro-0.13.0.tar.gz",
  sha256  = "fb4a1b5d78c031795586684175db71f490ec670bea2571aecb6c6237b4130820",
  deps    = { "glibc", "qtbase", "gcc", "qtwebsockets" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -name 'QCoro6Config.cmake' | grep -q .")
  end,
}
