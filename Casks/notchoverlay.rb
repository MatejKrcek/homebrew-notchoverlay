cask "notchoverlay" do
  version "1.0.0"
  sha256 "2201f951302c54736699bee65876d94b46e2533ad4d82a05f936846621f59e0a"

  url "https://github.com/MatejKrcek/NotchOverlay/releases/download/v#{version}/NotchOverlay.dmg"
  name "NotchOverlay"
  desc "Dynamic Island for AI coding agents in the Mac notch"
  homepage "https://github.com/MatejKrcek/NotchOverlay"

  app "NotchOverlay.app"

  # ad-hoc podepsaná appka: smazat quarantine flag, ať Gatekeeper nepřekáží
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/NotchOverlay.app"],
                   sudo: false
  end
end
