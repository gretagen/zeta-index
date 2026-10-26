return {
  name = "bottom",
  version = "0.14.9",
  summary = "Cross platform graphical process and system monitor",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bottom/bottom-0.14.9.tar.gz",
  sha256 = "a4dba68d63e92b550805587fe9abd86c88de28806c1081235f47d8282b75a30e",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/btm --version")
  end,
}
