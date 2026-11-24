cask "tables" do
  arch arm: "arm64", intel: "x64"

  version "3.3.46"
  sha256 arm:   "42dbbff66eb957e062760e1bd7a922d564cdca5b0de82b654fe2fa98606301ff",
         intel: "823ce1adbba174b73baccdbaff69f3726370bb97d57baf10cb3857a0db86355e"

  url "https://github.com/proton0210/DynoConsole-Public-Releases/releases/download/v#{version}/Tables-#{version}-mac-#{arch}.dmg",
      verified: "github.com/proton0210/DynoConsole-Public-Releases/"
  name "Tables"
  name "Tables by Serverless Creed"
  desc "DynamoDB GUI for browsing, querying and safely editing AWS DynamoDB tables"
  homepage "https://tables.serverlesscreed.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Tables updates itself in place from the same GitHub releases.
  auto_updates true
  depends_on macos: ">= :monterey"

  app "Tables.app"

  zap trash: [
    "~/Library/Application Support/DynoConsole",
    "~/Library/Application Support/Tables",
    "~/Library/Caches/com.dynoconsole.app",
    "~/Library/Caches/com.dynoconsole.app.ShipIt",
    "~/Library/HTTPStorages/com.dynoconsole.app",
    "~/Library/Logs/DynoConsole",
    "~/Library/Logs/Tables",
    "~/Library/Preferences/com.dynoconsole.app.plist",
    "~/Library/Saved Application State/com.dynoconsole.app.savedState",
  ]
end
