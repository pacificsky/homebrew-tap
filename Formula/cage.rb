class Cage < Formula
  desc "Run coding agents safely in containers"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "acfb945ff5e1558f68da48606ba7e00ea4b604b53f1cb67625d14f5ccc2382d1"
  license "MIT"

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
