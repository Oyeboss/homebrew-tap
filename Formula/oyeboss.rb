class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.329.0.tgz"
  sha256 "4a72556795fcbd10c815c98075bd60dd122dc8fb252740045cd9ebe7e45bb53a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.329.0", shell_output("#{bin}/boss --version")
  end
end
