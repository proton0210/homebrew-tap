cask "tables" do
  arch arm: "arm64", intel: "x64"

  version "3.3.43"
  sha256 arm:   "c9c65616da9e2a561c8ee0355bd518e2b20a17c66d30af892ed6fdca80f961e2",
         intel: "e2e05864347a9552ec34a0fbd73ce797a08ddf513af0688aa7d1cadc554a3daa"

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
