class Cage < Formula
  desc "Run coding agents safely in containers on macOS"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "88e58f2f3994c8ef8ec267b452a0b0c0eb60e7565767d3a9af35d590f3cbe0d4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
