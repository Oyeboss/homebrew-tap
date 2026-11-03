class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.341.0.tgz"
  sha256 "9e49d416e48ace1f675b1132a95e70834718ebf1c014c807ae9077eb7286fb81"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.341.0", shell_output("#{bin}/boss --version")
  end
end
