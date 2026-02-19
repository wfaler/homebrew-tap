class Rig < Formula
  desc "Instant, reproducible development environments for AI-assisted coding"
  homepage "https://github.com/wfaler/rig"
  url "https://github.com/wfaler/rig/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "220a97faab96d99dc98f0c2c12daa4df4d8862adf631e3971614789c8988c932"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "rig", shell_output("#{bin}/rig --help", 2)
  end
end
