class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.2.1/puff-v0.2.1.tar.gz"
  sha256 "094652629e558d9051b2591cf89825a5ece887c01912f8e6168de741445e57e0"
  version "0.2.1"
  license "MIT"

  def install
    bin.install "puff"
    prefix.install "Puff.app"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/puff --help")
  end
end
