cask "tables" do
  arch arm: "arm64", intel: "x64"

  version "3.3.44"
  sha256 arm:   "7a538de1f28e1706695babecacde109a75180c9d15b0d636e16f997edfc70f78",
         intel: "e7bcff04b2cc1bb4076acb7911cbefd95f9711a8da969a91ca15a2e6afb512cd"

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
