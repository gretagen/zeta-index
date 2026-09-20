return {
  name    = "zita-resampler",
  version = "1.11.2",
  summary = "A C++ library for resampling audio signals",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/zita-resampler/zita-resampler.pkg.tar.zst",
  sha256  = "d4416dd2466b29f6c933a6e5340e9ebdd99fb029a17f25d139d01cb712a2994b",
  deps    = { "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
