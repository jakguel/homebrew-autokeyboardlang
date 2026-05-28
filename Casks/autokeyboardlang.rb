cask "autokeyboardlang" do
  version "2.4.3"
  sha256 "e1443bdbda87d60bbdf9a1e9d19ebf7594108bfea65d30d472e2f049da2728d5"

  url "https://github.com/jakguel/autokeyboardlang/releases/download/v2.4.3/autokeyboardlang-v2.4.3.zip"
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
