class Cage < Formula
  desc "Run coding agents safely in containers on macOS"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "a875b7747e0ad950d0a7cc4e802e0310c726880fc82724e7269d0dc61ecb76cb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
