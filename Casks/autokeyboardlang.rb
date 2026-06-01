cask "autokeyboardlang" do
  version "2.7.0"
  sha256 "8afa654f281ff4aef88deefb0c189eeaac85338339145115785ebcac27e59d47"

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
