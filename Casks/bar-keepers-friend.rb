cask "bar-keepers-friend" do
  version "0.1.1"
  sha256 "bbe458cf540f16b402dac3466a593f7c4b753a11d1e45d7f6fa02294ded203e2"

  url "https://github.com/aagrawal207/bar-keepers-friend/releases/download/v#{version}/BarKeepersFriend-#{version}-universal.dmg"
  name "Bar Keeper's Friend"
  desc "Hide, organise, and reveal menu bar items"
  homepage "https://github.com/aagrawal207/bar-keepers-friend"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "BarKeepersFriend.app"

  uninstall quit: "com.agraabhi.BarKeepersFriend"

  zap trash: [
    "~/Library/Caches/com.agraabhi.BarKeepersFriend",
    "~/Library/HTTPStorages/com.agraabhi.BarKeepersFriend",
    "~/Library/Logs/BarKeepersFriend.log",
    "~/Library/Logs/BKF-bar.png",
    "~/Library/Logs/BKF-diag.json",
    "~/Library/Preferences/com.agraabhi.BarKeepersFriend.plist",
  ]
end
