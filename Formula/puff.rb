class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.1.0/puff-v0.1.0.tar.gz"
  sha256 "ca7f9c9c45dd939337e8ab948dc586afaef4c72a0a7f774dec3af9b1a78e0833"
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
