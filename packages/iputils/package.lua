return {
  name    = "iputils",
  version = "20200821",
  summary = "Network monitoring tools (ping, tracepath, clockdiff)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iputils/iputils-s20200821.tar.gz",
  sha256  = "08fa5143f1749afd3d274790566a2b13370983e9534d3b30967d9ddf5060183e",
  deps    = { "glibc", "libcap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ping")
  end,
}
