class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.343.0.tgz"
  sha256 "7a47b9d4f97220b3d710811d2de191821db6faa0f28a69b8a525e7992476b23a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.343.0", shell_output("#{bin}/boss --version")
  end
end
