cask "tables" do
  arch arm: "arm64", intel: "x64"

  version "3.3.41"
  sha256 arm:   "017ef3ea6c8b65f515b22a4a9abd61d49efac455d2d8743e85a4f8c130e19ba6",
         intel: "e6b23112b904f253d8869adef98915c2b16a0dcf63bfba8c2331cbc765636c26"

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
