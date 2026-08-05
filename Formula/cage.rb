class Cage < Formula
  desc "Run coding agents safely in containers"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "166e9ce79f8ac4cadf99ab8845a4ab932a31e5709fcac7391a74ea69a8a7e8ac"
  license "MIT"

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
