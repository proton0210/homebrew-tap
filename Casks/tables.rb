cask "tables" do
  arch arm: "arm64", intel: "x64"

  version "3.3.42"
  sha256 arm:   "247e65d25f500eadf7f97027f7a5409296e21266b3a361693d895af8279b8129",
         intel: "0bf13cc10f6591c68207655219d5508f59b886901fd2c3849df9013c420c2bed"

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
