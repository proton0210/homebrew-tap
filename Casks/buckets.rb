cask "buckets" do
  arch arm: "arm64", intel: "x64"

  version "2.9.7"
  sha256 arm:   "823989eb5ca16ee5513f0874eba14fe29639158effd4c94431e5f7d8b2137ba0",
         intel: "c63e561feac9c4bf8abfb922cde3d95b306227ea7918dcdea7a11d520c3fdff4"

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
