return {
  name    = "re2",
  version = "2025.11.05",
  summary = "Efficient regular expression library (Google)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/re2/re2-2025.11.05.tar.gz",
  sha256  = "d912eb7c35aafe2cde160e5c6bb635fbdc23653c2110feaff727fb39e541352e",
  deps    = { "glibc", "abseil-cpp" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libre2.so")
  end,
}
