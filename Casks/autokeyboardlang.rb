cask "autokeyboardlang" do
  version "2.4.2"
  sha256 "623858e1051f0ca1e130cecae992c2261487cffd876b35e3376066255418b16b"

  url "https://github.com/jakguel/autokeyboardlang/releases/download/v2.4.2/autokeyboardlang-v2.4.2.zip"
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
