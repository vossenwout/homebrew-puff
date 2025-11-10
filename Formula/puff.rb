class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.3.0/puff-v0.3.0.tar.gz"
  sha256 "444ce966b8fb5c70230789cd442a778d2cb2800bbb394b1d2e294397a9ad0591"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "puff"
    prefix.install "Puff.app"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/puff --help")
  end
end
