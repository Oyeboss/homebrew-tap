class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.339.0.tgz"
  sha256 "b4091b4b56e0dcd09fa1046962179515c11c5961c94f6c9f4fd1b537b3f34a74"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.339.0", shell_output("#{bin}/boss --version")
  end
end
