return {
  name    = "libcue",
  version = "2.3.0-2-x86_64",
  summary = "parses so-called cue sheets and handles the parsed data",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcue/libcue-2.3.0-2-x86_64.pkg.tar.zst",
  sha256  = "a96988a4c4ee650fb4fa77ae6a405bd6c26932d290b909d9dc217ca78f00a143",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcue.so.2.3.0")
  end,
}
