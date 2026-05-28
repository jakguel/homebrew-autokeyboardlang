cask "autokeyboardlang" do
  version "2.5.0"
  sha256 "df19aa23bb8443945751556a13df3ef30b0687e4b019d467c392e46b1bd02eaf"

  url "https://github.com/jakguel/autokeyboardlang/releases/download/v2.5.0/autokeyboardlang-v2.5.0.zip"
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
