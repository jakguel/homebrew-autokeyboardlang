cask "autokeyboardlang" do
  version "2.5.1"
  sha256 "d617ddb1e7c6b7488ea3aa446afd3eb0fb5d531b2b855958409099fd08f7cad0"

  url "https://github.com/jakguel/autokeyboardlang/releases/download/v2.5.1/autokeyboardlang-v2.5.1.zip"
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
