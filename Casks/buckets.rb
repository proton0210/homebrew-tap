cask "buckets" do
  arch arm: "arm64", intel: "x64"

  version "2.9.3"
  sha256 arm:   "eefe5c76828a731cf705661725f9de1e156bf06e816572605a7f04e36c0be6b5",
         intel: "5628aaa61f25f6725252ad3ecc1824158defbd857ebc98d806cfd6fabb033fea"

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
