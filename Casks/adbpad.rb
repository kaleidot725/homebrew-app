cask "adbpad" do
  version "3.7.0"
  sha256 "92fe1d8f741bd7b351e4370d777bed1afaadc363ca17d38662978d06f933094c"

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
