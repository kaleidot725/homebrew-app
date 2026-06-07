cask "adbpad" do
  version "3.9.0"
  sha256 "54388ade3b5797c270122fb57733b6ac8d5a39cd9d4a66fff516989affd7227b"

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
