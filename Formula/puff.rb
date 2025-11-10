class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.1.0/puff-v0.1.0.tar.gz"
  sha256 "7aa56743db7f5f8b144aaa7a755e3818f2a5a8a0b18b6d7ce4574fb730bae934"
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
