return {
  name    = "plasma-activities-stats",
  version = "6.3.6",
  summary = "KDE: A library for accessing the usage data collected by the activities system.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/plasma-activities-stats/plasma-activities-stats-6.3.6.tar.gz",
  sha256  = "bcc96a9da91800b1f17763edbff657f0a55ac08fd887bf71428803e03e61fcab",
  deps    = { "glibc", "qtbase", "gcc", "kactivitymanagerd", "plasma-activities" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
