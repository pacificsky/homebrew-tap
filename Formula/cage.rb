class Cage < Formula
  desc "Run coding agents safely in containers"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "0b2a84f747dd195c8d050907396cb3ded092f6fec329fde54bf4064aef1fe0fd"
  license "MIT"

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
