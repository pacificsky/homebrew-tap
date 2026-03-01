class Cage < Formula
  desc "Run coding agents safely in containers on macOS"
  homepage "https://github.com/pacificsky/cage"
  url "https://github.com/pacificsky/cage/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "cb2c69d6532e52749a1f2ec20b7fe707a35d85bef4cb7c7daa4fcc8e14c8c4f7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cage.sh" => "cage"
  end

  test do
    assert_match "cage", shell_output("#{bin}/cage 2>&1", 1)
  end
end
