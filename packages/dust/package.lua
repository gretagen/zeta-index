return {
  name = "dust",
  version = "1.2.6",
  summary = "More intuitive version of du in Rust",
  url = "https://github.com/bootandy/dust/releases/download/v1.2.6/dust-v1.2.6-x86_64-unknown-linux-gnu.tar.gz",
  sha256 = "14f788707aad217667f6812cf1a9639bf5c861a2ee815d486cffc36051f5e759",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/dust --version")
  end,
}
