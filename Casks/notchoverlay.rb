cask "notchoverlay" do
  version "1.3.1"
  sha256 "ab0eb5a87b4fcc9913be0a08131a207504143ba9079c60e237c9d592cf46caf9"

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
