cask "wailbrew" do
  version "0.6.1"
  sha256 "512b6d57ddf16cd5265db132d5a4b44187782dbe3795d7fb3491648f802cf6e6"

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
