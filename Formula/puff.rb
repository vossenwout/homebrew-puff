class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.1.0/puff-v0.1.0.tar.gz"
  sha256 "2c5c94aea9906fcd9fa9f1719ef710fb34f02dbf824ca4aaa3b1ab4a75b5fa68"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "puff"
    prefix.install "Puff.app"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/puff --help")
  end
end
