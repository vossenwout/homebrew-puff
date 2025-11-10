class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.1.2/puff-v0.1.2.tar.gz"
  sha256 "a827603abd1f623e023960f623dcc019ccb399e2c0b083b114775f8a03705628"
  version "0.1.2"
  license "MIT"

  def install
    bin.install "puff"
    prefix.install "Puff.app"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/puff --help")
  end
end
