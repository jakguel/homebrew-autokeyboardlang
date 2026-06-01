cask "autokeyboardlang" do
  version "2.7.0"
  sha256 "0acfc6101a2ff079a89408618a7d97f37b9735450cce9a04eb2156cb6fc00146"

  url "https://github.com/jakguel/autokeyboardlang/releases/download/v2.7.0/autokeyboardlang-v2.7.0.zip"
  name "autokeyboardlang"
  desc "Automatic keyboard input language switching for macOS"
  homepage "https://github.com/jakguel/autokeyboardlang"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "autokeyboardlang.app"

  zap trash: [
    "~/Library/LaunchAgents/com.jakguel.autokeyboardlang.plist",
    "~/Library/Preferences/com.jakguel.autokeyboardlang.plist",
  ]
end
