class Autokeyboardlang < Formula
  desc "Automatic keyboard input language switching for macOS"
  homepage "https://github.com/jakguel/autokeyboardlang"
  version "2.1.3"

  on_arm do
    if MacOS.version >= :sequoia
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_tahoe.tar.gz"
      sha256 "18431f5c5057ed3dc122b922b096d62f768c12d3ad4113f301d00b009d62a7cf"
    else
      url "https://github.com/jakguel/autokeyboardlang/releases/download/v#{version}/autokeyboardlang-v#{version}.arm64_sequoia.tar.gz"
      sha256 "533329b6278f72091777ebc09d613b843677bd41af209c03790e1be3ea49ec89"
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
