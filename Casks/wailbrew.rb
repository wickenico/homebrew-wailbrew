cask "wailbrew" do
  version "0.7.11"
  sha256 "17dcf4fdbce5babf575116d79ce71a1a31a7d8c351dd60c0ed5a763ca84d875b"

  url "https://github.com/wickenico/WailBrew/releases/download/v#{version}/wailbrew-v#{version}.zip"
  name "WailBrew"
  desc "Manage Homebrew packages with a UI"
  homepage "https://github.com/wickenico/WailBrew"

  on_intel do
    # Intel Mojave (10.14)
    depends_on macos: ">= :mojave"
  end

  on_arm do
    # Apple Silicon Big Sur (11)
    depends_on macos: ">= :big_sur"
  end

  app "WailBrew.app"

  zap trash: [
    "~/Library/Application Support/WailBrew",
    "~/Library/Preferences/dev.wailbrew.plist",
    "~/Library/Saved Application State/dev.wailbrew.savedState",
  ]
end
