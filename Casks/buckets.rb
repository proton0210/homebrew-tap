cask "buckets" do
  arch arm: "arm64", intel: "x64"

  version "2.9.8"
  sha256 arm:   "7b2f87b12f84e7212fe24d834199a5522343cd28908442956028027eda3c8f85",
         intel: "60eb62bc0c1aa52bd815801e1d54609cc5aa425ed02f1034a133c1265e4a453d"

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
