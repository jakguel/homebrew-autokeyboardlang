class Autokeyboardlang < Formula
  desc "Automatic keyboard input language switching for macOS"
  homepage "https://github.com/jakguel/autokeyboardlang"
  version "2.4.0"

  on_arm do
    if MacOS.version >= :sequoia
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_tahoe.tar.gz"
      sha256 "eff4b709978f03f0b3bd2bef6b8d50ce8e8e0c3f4d06902d9482fc994e8e7ccc"
    else
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_sequoia.tar.gz"
      sha256 "70126a835fa0d651905f6bc9c7417406f1bab8d64ce8df80685b74b681e701c0"
    end
  end

  def install
    bin.install "autokeyboardlang"
  end

  service do
    run [bin/"autokeyboardlang"]
    keep_alive true
    log_path var/"log/autokeyboardlang.log"
    error_log_path var/"log/autokeyboardlang.log"
  end

  test do
    system bin/"autokeyboardlang", "--help"
  end
end
