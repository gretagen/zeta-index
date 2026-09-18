return {
  name    = "libcap-ng",
  version = "0.8.5",
  summary = "Library for Linux capabilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libcap-ng/libcap-ng-0.8.5.tar.gz",
  sha256  = "c705cf6ef085c025b18ef2ad372f786c5970ae75cdfa70e9f8a97414eee54ac5",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcap-ng.so")
  end,
}
