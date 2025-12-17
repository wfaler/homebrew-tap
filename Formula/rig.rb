class Rig < Formula
  desc "Instant, reproducible development environments for AI-assisted coding"
  homepage "https://github.com/wfaler/rig"
  url "https://github.com/wfaler/rig/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "10bcc0039d589934d238db13a19c8c2110f4d2edae26d4ca768874d959f93509"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "rig", shell_output("#{bin}/rig --help", 2)
  end
end
