cask "wailbrew" do
  version "0.7.2"
  sha256 "2e7dbd7df0a0485c5d564dca7d301b5fa36aeca2ed8e67ff3f7a259c8cc974fe"

  url "https://github.com/wickenico/WailBrew/releases/download/v#{version}/wailbrew-v#{version}.zip"
  name "WailBrew"
  desc "Manage Homebrew packages with a UI"
  homepage "https://github.com/wickenico/WailBrew"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "WailBrew.app"

  zap trash: [
    "~/Library/Application Support/WailBrew",
    "~/Library/Preferences/dev.wailbrew.plist",
    "~/Library/Saved Application State/dev.wailbrew.savedState",
  ]
end
