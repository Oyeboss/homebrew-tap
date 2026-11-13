class Oyeboss < Formula
  desc "Turn an idea into something real, in the AI tool you already use"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.346.0.tgz"
  sha256 "6fa10937ab824eae5062b5466bf2f8528e73c42ec75ff90f6eb624046f23677d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.346.0", shell_output("#{bin}/boss --version")
  end
end
