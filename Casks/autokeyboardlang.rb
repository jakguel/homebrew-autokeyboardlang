cask "autokeyboardlang" do
  version "2.6.0"
  sha256 "d856e08a0f664461db76b6d8791200b37991a34c10badf04a0f78acd971bfc12"

  url "https://github.com/jakguel/autokeyboardlang/releases/download/v2.6.0/autokeyboardlang-v2.6.0.zip"
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
