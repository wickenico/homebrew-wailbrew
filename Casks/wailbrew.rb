cask "wailbrew" do
  version "0.6.0"
  sha256 "ec917addb6aff24129cdc40818c0a75ee01523ebfee550f4db8d5401ada71311p"

  url "https://github.com/wickenico/WailBrew/releases/download/v#{version}/wailbrew-v#{version}.zip",
      verified: "github.com/wickenico/WailBrew/"
  name "WailBrew"
  desc "Manage Homebrew packages with a UI"
  homepage "https://github.com/wickenico/WailBrew"

  app "WailBrew.app"

  zap trash: [
    "~/Library/Application Support/WailBrew",
    "~/Library/Preferences/dev.wailbrew.plist",
    "~/Library/Saved Application State/dev.wailbrew.savedState",
  ]
end

