class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.338.0.tgz"
  sha256 "38f006d6360e297740daa7f8e81f852048d47706828847bc2afa7fc9a97753ba"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.338.0", shell_output("#{bin}/boss --version")
  end
end
