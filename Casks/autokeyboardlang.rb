cask "autokeyboardlang" do
  version "2.8.0"
  sha256 "18be5889b358064eeea8c4c5c3731fbf359311ebc6d718f25ac1892325b34f10"

  url "https://github.com/jakguel/autokeyboardlang/releases/download/v2.8.0/autokeyboardlang-v2.8.0.zip"
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
