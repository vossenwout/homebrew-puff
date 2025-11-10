class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.1.1/puff-v0.1.1.tar.gz"
  sha256 "39ba61ee6218e4a43be5e4872de10a19f6a16c2cb03d738b30ed71e7d6219a96"
  version "0.1.1"
  license "MIT"

  def install
    bin.install "puff"
    prefix.install "Puff.app"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/puff --help")
  end
end
