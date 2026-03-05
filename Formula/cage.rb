class Cage < Formula
  desc "Run coding agents safely in containers on macOS"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "da14b853131fa01b84d84042f634c689d07d99071f5a9888a1188ecdd8f94c4a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
