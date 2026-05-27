class Autokeyboardlang < Formula
  desc "Automatic keyboard input language switching for macOS"
  homepage "https://github.com/jakguel/autokeyboardlang"
  version "2.1.4"

  on_arm do
    if MacOS.version >= :sequoia
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_tahoe.tar.gz"
      sha256 "423d856a5d2854ff6646c2082e43feb02d3af401d991b12800ed10f21b88409d"
    else
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_sequoia.tar.gz"
      sha256 "f99fc28d97c411000f724580c5ebffa6b7adb58b93229ba2478def53d59c48d7"
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
