class Cage < Formula
  desc "Run coding agents safely in containers"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "c6a3d4b2bfdd58226ec68c5cb21f77ba5e5ecf912253a9dfe518aea7384bc45e"
  license "MIT"

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
