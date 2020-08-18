cask "teledrive" do
#   version "0.9.5"
#   sha256 "3fcecd310191aaaf15e952813f328a1fb59a69c1a13fa6050ee8cccfa49882ab"

  # github.com/KhushrajRathod/TeleDrive/ was verified as official when first introduced to the cask
  url "https://www.khushrajrathod.me/TeleDrive/latest/macOS"
  appcast "https://github.com/KhushrajRathod/TeleDrive/releases.atom"
  name "TeleDrive"
  homepage "https://github.com/KhushrajRathod/TeleDrive/"
  
  auto_updates true
  
  app "TeleDrive.app"
  
  zap trash: [
    "~/Library/Caches/me.khushrajrathod.teledrive*",
    "~/Library/Logs/DiagnosticReports/TeleDrive*",
    "~/Library/Logs/TeleDrive",
    "~/Library/Preferences/ByHost/me.khushrajrathod.teledrive*",
    "~/Library/Preferences/me.khushrajrathod.teledrive.plist",
    "~/Library/Preferences/com.electron.teledrive.plist",
    "~/Library/Saved Application State/me.khushrajrathod.teledrive.savedState",
  ]
end
