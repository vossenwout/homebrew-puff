class Puff < Formula
  desc "CLI helper that fires macOS notifications for AI agents"
  homepage "https://github.com/vossenwout/puff"
  url "https://github.com/vossenwout/puff/releases/download/v0.4.0/puff-v0.4.0.tar.gz"
  sha256 "366793652f27a7b89e9cb0381fcda32918cb8035ad2f816f4ee5f4a4b868fdb3"
  version "0.4.0"
  license "MIT"

  def install
    bin.install "puff"
    prefix.install "Puff.app"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/puff --help")
  end
end
