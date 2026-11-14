class Oyeboss < Formula
  desc "Turn an idea into something real, in the AI tool you already use"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.347.0.tgz"
  sha256 "523c44804f12072fba18ec3351f0d7684d183bd8a99f63ee1a9c0b35217bf2d4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.347.0", shell_output("#{bin}/boss --version")
  end
end
