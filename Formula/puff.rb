class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.4.1/puff-v0.4.1.tar.gz"
  sha256 "d92b278bc064727b28fa6820e579905fbf9a3e7be2f8185c6cfd612d9947c0b2"
  version "0.4.1"
  license "MIT"

  def install
    bin.install "puff"
    prefix.install "Puff.app"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/puff --help")
  end
end
