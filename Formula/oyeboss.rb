class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.340.0.tgz"
  sha256 "0a1f11da02ef941ad36cd8b527b1cf8b04631122972a71eee118b55fb6e320d2"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.340.0", shell_output("#{bin}/boss --version")
  end
end
