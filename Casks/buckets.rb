cask "buckets" do
  arch arm: "arm64", intel: "x64"

  version "2.9.1"
  sha256 arm:   "7ace96a77d8315362f736dcbaea8e3dfd71121f22cb480faf77452f5ab69f650",
         intel: "8ae583d872996e5fd7c58aba9ab3ff769cacc2d8bee9dbd83be9724474da5c9f"

  url "https://github.com/proton0210/S3Console-Public-Releases/releases/download/v#{version}/Buckets-#{version}-mac-#{arch}.zip",
      verified: "github.com/proton0210/S3Console-Public-Releases/"
  name "Buckets"
  desc "Desktop client for Amazon S3, CloudFront and S3-compatible storage"
  homepage "https://buckets.serverlesscreed.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Buckets.app"

  zap trash: [
    "~/Library/Application Support/S3Console",
    "~/Library/Caches/com.s3Console.app",
    "~/Library/Caches/com.s3Console.app.ShipIt",
    "~/Library/Caches/s3console-updater",
    "~/Library/HTTPStorages/com.s3Console.app",
    "~/Library/Logs/Buckets",
    "~/Library/Preferences/com.s3Console.app.plist",
    "~/Library/Saved Application State/com.s3Console.app.savedState",
  ]
end
