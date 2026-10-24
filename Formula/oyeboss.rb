class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.336.0.tgz"
  sha256 "9bf6060fe43dfe9f8970cce784cd2fcfe41bb4c4cce36c9dd3db1f4ea739838e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.336.0", shell_output("#{bin}/boss --version")
  end
end
