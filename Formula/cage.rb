class Cage < Formula
  desc "Run coding agents safely in containers on macOS"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e410589fef92e4269aad1c3ce47d2c84bd72b3c90f2a3c8e2ccd43216d552c1e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
