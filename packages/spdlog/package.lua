return {
  name    = "spdlog",
  version = "1.15.3",
  summary = "Fast C++ logging library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/spdlog/spdlog-1.15.3.tar.gz",
  sha256  = "56fb1d72799b39ef3e5f3b83bd5af15672f64a709fa52fda49f5672b8434d224",
  deps    = { "glibc", "fmt" },
  archive = { strip = 1 },
}
