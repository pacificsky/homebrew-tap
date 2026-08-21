class Cage < Formula
  desc "Run coding agents safely in containers"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.12.1.tar.gz"
  sha256 "c8970c8b7ea893b282913cf48713466c7e04f83206f41a5d8fb1c87d9fbdf4bc"
  license "MIT"

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
