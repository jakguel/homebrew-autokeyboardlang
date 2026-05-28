cask "autokeyboardlang" do
  version "2.4.4"
  sha256 "17cf31b08f6c296b8c5540536d9eacc1a63f4df36b9d1890444a8bd8492defe6"

  url "https://github.com/jakguel/autokeyboardlang/releases/download/v2.4.4/autokeyboardlang-v2.4.4.zip"
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
