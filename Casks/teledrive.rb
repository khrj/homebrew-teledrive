cask "teledrive" do
  version "1.0.0"
  sha256 "d04d002b57d39fc17f106533365f7e3a2bee59a4d8962f5a8b6c80b3ef01bfe2"
  
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
  
  caveats "If installed without --no-quarantine, gatekeeper will \nstop you from running the app the first time. \n'Right-click > Open' in finder the first time to workaround. \nSee https://github.com/KhushrajRathod/TeleDrive/issues/10 for details"
end
