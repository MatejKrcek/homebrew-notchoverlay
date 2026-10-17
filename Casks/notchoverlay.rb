cask "notchoverlay" do
  version "1.1.3"
  sha256 "d8daee365b41ea173c1be37531a3c5b6b8633c494a3daa6845be0219ac8ab355"

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
