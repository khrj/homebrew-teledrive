cask "teledrive" do
  version :latest
  sha256 :no_check  
  
  # github.com/khrj/teledrive/ was verified as official when first introduced to the cask
  url "https://teledrive.khushrajrathod.me/api/?type=dmg"
  appcast "https://github.com/khrj/teledrive/releases.atom"
  name "TeleDrive"
  homepage "https://teledrive.khushrajrathod.me/"
  
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
  
  caveats "If installed without --no-quarantine, gatekeeper will \n initially stop you from running the app. \n'Right-click > Open' in finder the first time to workaround. \nSee https://github.com/khrj/teledrive/issues/10 for details"
end
