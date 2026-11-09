cask "buckets" do
  arch arm: "arm64", intel: "x64"

  version "2.9.6"
  sha256 arm:   "d22f292c3cd83cd4b8f8803c731b2fa498590320c22b66ffec623220c138cc5e",
         intel: "548167b404247e181a98da8d95c2b513a7d37389d768791805f49e74328d3c19"

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
