class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.2.2/puff-v0.2.2.tar.gz"
  sha256 "c9dc29dbce74b661fafd27260a26bb48b851deef0d2b6ef99183596a49dc53e0"
  version "0.2.2"
  license "MIT"

  def install
    bin.install "puff"
    prefix.install "Puff.app"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/puff --help")
  end
end
