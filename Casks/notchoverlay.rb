cask "notchoverlay" do
  version "1.1.2"
  sha256 "80eac5e25c3f15117d8d0aa6a74a295fe2662997ddc83c9727f3efa34ca7063e"

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
