cask "notchoverlay" do
  version "1.1.1"
  sha256 "94281f8a9db3fa4a159f64250a9efa144950a4104356acb96a73fe7653b0319d"

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
