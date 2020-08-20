cask "teledrive" do
  version "0.9.7"
  sha256 "d1a70c4c9aadf0b39e6d1bb3c039de2e411a269a13b0d770a0a70732aff249b9"
  
  # github.com/KhushrajRathod/TeleDrive/ was verified as official when first introduced to the cask
  url "https://github.com/KhushrajRathod/TeleDrive/releases/download/v#{version}/TeleDrive-#{version}.dmg"
  appcast "https://github.com/KhushrajRathod/TeleDrive/releases.atom"
  name "TeleDrive"
  homepage "https://github.com/KhushrajRathod/TeleDrive/"
  
  auto_updates true
  
  app "TeleDrive.app"
  
  zap trash: [
    "~/Library/Application Support/TeleDrive",
    "~/Library/Caches/me.khushrajrathod.teledrive*",
    "~/Library/Logs/DiagnosticReports/TeleDrive*",
    "~/Library/Logs/TeleDrive",
    "~/Library/Preferences/ByHost/me.khushrajrathod.teledrive*",
    "~/Library/Preferences/me.khushrajrathod.teledrive.plist",
    "~/Library/Preferences/com.electron.teledrive.plist",
    "~/Library/Saved Application State/me.khushrajrathod.teledrive.savedState",
  ]
  
  caveats "If installed without --no-quarantine, gatekeeper will stop you from running the app the first time. Right-click > Open in finder the first time to workaround. See https://github.com/KhushrajRathod/TeleDrive/issues/10 for details"
end
