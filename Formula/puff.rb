class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.1.0/puff-v0.1.0.tar.gz"
  sha256 "7b24ad69903f969cd84ef4689b531fb59173c0f053f04f01c3ab41a5004625c1"
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
