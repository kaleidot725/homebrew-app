cask "adbpad" do
  version "3.5.0"
  sha256 "3fb0eb20e270860241f487720ed870ec1a3892c77216e9b2deff13cafd92de84"

  url "https://github.com/kaleidot725/adbpad/releases/download/v#{version}/AdbPad-#{version}.dmg"
  name "AdbPad"
  desc "GUI tool for Android app testing using ADB"
  homepage "https://github.com/kaleidot725/adbpad"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AdbPad.app"

  zap trash: [
    "~/Library/Application Support/AdbPad",
    "~/Library/Preferences/jp.kaleidot725.adbpad.plist",
    "~/Library/Saved Application State/jp.kaleidot725.adbpad.savedState",
  ]
end
