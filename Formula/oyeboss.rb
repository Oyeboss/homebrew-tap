class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.337.0.tgz"
  sha256 "c76b2014dd3609a53c64f55b043c17bc1a41a66a60c88c58771bab780abac22d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.337.0", shell_output("#{bin}/boss --version")
  end
end
