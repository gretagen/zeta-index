return {
  name    = "webrtc-audio-processing-1",
  version = "1.3-6-x86_64",
  summary = "audioProcessing library based on Google's implementation of WebRTC (legacy)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/webrtc-audio-processing-1/webrtc-audio-processing-1-1.3-6-x86_64.pkg.tar.zst",
  sha256  = "6a3096ee762546c6ee0435ccb5471aa98324b4d72448b2a746a53e0f3a8e3761",
  deps    = { "abseil-cpp", "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libwebrtc-audio-coding-1.so.3")
  end,
}
