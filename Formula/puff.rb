class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.2.0/puff-v0.2.0.tar.gz"
  sha256 "bda0e5c228392cb6f97a2ea4871fdfdf9a8f94124af44e85d4ee14a692ce5937"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "puff"
    prefix.install "Puff.app"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/puff --help")
  end
end
