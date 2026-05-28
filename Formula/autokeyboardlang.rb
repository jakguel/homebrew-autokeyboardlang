class Autokeyboardlang < Formula
  desc "Automatic keyboard input language switching for macOS"
  homepage "https://github.com/jakguel/autokeyboardlang"
  version "2.3.0"

  on_arm do
    if MacOS.version >= :sequoia
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_tahoe.tar.gz"
      sha256 "1dab88ec9284081526c71eb99166872b74992b47ddfc5fc103581b967de5575c"
    else
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_sequoia.tar.gz"
      sha256 "f628ca7f47399350bda1c08e43309dea66a563ea3991f86e2348914eb5b60810"
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
