class Autokeyboardlang < Formula
  desc "Automatic keyboard input language switching for macOS"
  homepage "https://github.com/jakguel/autokeyboardlang"
  version "2.4.1"

  on_arm do
    if MacOS.version >= :sequoia
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_tahoe.tar.gz"
      sha256 "665c78b7d0441622c7da367760d5537537c07ef102c960ebf7589e3575c211c0"
    else
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_sequoia.tar.gz"
      sha256 "13a1c1a99997c0473cad2e5739a847c75ba7683e8c66e499805aa145ac5587dd"
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
