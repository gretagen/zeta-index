return {
  name    = "ugrep",
  version = "7.8.5-1-x86_64",
  summary = "Ultra fast grep with interactive query UI (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ugrep/ugrep-7.8.5-1-x86_64.pkg.tar.zst",
  sha256  = "5001c1f4c89c59dc22bd03d9e0046f50703098ebe2a3b9455ffeee7228ef0cdb",
  deps    = { "brotli", "zstd", "lz4", "xz-utils", "bzip2", "libz", "pcre2", "libstdc++", "libgcc", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ugrep")
  end,
}
